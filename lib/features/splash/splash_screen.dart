import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hash_chat/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final GoRouter _router;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _router = GoRouter.of(context);
  }

  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  void _checkAuthStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('user_token');

    await Future.delayed(const Duration(seconds: 5));

    if (token != null) {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        await FirebaseFirestore.instance.collection('users').doc(user.uid).update({
          'isOnline': true,
          'lastSeen': null,
        });
      }

      _router.goNamed('navbar', pathParameters: {'pageIndex': '0'});
    } else {
      _router.goNamed('login');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Image.asset(logoHashChatGIF,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


