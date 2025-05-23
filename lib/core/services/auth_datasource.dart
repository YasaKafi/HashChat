import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../models/user/user_model.dart';

class AuthDatasource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static const String _userTokenKey = 'user_token';

  Future<Either<String, UserModel>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return const Left('Login dibatalkan');

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      final fbUser = userCredential.user;

      if (fbUser == null) return const Left('Gagal mendapatkan user dari Firebase');

      final userModel = UserModel(
        id: fbUser.uid,
        name: fbUser.displayName ?? '',
        email: fbUser.email ?? '',
        profilePicture: fbUser.photoURL ?? '',
        isOnline: true,
        lastSeen: null,
      );


      final userDoc = await _firestore.collection('users').doc(userModel.id).get();
      Map<String, int> existingUnreadCount = {};
      if (userDoc.exists && userDoc.data()?['unreadCount'] != null) {
        existingUnreadCount = Map<String, int>.from(userDoc.data()!['unreadCount']);
      }

      final updatedUserModel = userModel.copyWith(
        unreadCount: existingUnreadCount,
      );

      await _firestore.collection('users').doc(updatedUserModel.id).set(
        updatedUserModel.toJson(),
        SetOptions(merge: true),
      );

      print('[signInWithGoogle] Berhasil simpan user ke Firestore dengan doc ID: ${userModel.id}');


      // Simpan token ke shared preferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_userTokenKey, userModel.id); // kamu bisa pakai UID sebagai token

      return Right(userModel);
    } catch (e) {
      return Left('Login error: ${e.toString()}');
    }
  }

  Future<void> signOut() async {
    final uid = _auth.currentUser?.uid;

    if (uid != null) {
      await _firestore.collection('users').doc(uid).update({
        'isOnline': false,
        'lastSeen': FieldValue.serverTimestamp(),
      });
    }

    await _googleSignIn.signOut();
    await _auth.signOut();

    await Future.delayed(Duration(milliseconds: 500));

    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userTokenKey);
  }

  Future<bool> hasToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_userTokenKey);
  }

  Stream<User?> get userChanges => _auth.authStateChanges();
}
