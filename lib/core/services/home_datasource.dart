import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../models/user/user_model.dart';

class HomeDatasource {

  Stream<List<UserModel>> fetchUsers() {
    return FirebaseFirestore.instance
        .collection('users')
        .snapshots()
        .asyncMap((snapshot) async {
      final currentUserId = FirebaseAuth.instance.currentUser?.uid;
      print('[HomeDatasource] CurrentUser UID in stream: $currentUserId');

      final users = snapshot.docs
          .where((doc) => doc.id != currentUserId)
          .map((doc) => UserModel.fromJson(doc.data()))
          .toList();

      print('[HomeDatasource] Filtered users count: ${users.length}');
      return users;
    });
  }

}


