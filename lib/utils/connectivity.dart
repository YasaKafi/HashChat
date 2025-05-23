import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void startListeningConnectivity() {
  Connectivity()
      .onConnectivityChanged
      .listen((List<ConnectivityResult> results) {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;
    final isOnline = results.any((r) => r != ConnectivityResult.none);

    FirebaseFirestore.instance.collection('users').doc(user.uid).update({
      'isOnline': isOnline,
      if (!isOnline) 'lastSeen': FieldValue.serverTimestamp(),
    });
  });
}
