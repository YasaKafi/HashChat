

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AppLifecycleHandler extends WidgetsBindingObserver {
  final String uid;

  AppLifecycleHandler(this.uid);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final userRef = FirebaseFirestore.instance.collection('users').doc(uid);

    if (state == AppLifecycleState.paused || state == AppLifecycleState.detached) {
      userRef.update({
        'isOnline': false,
        'lastSeen': FieldValue.serverTimestamp(),
      });
    } else if (state == AppLifecycleState.resumed) {
      userRef.update({
        'isOnline': true,
      });
    }
  }
}
