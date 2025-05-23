import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hash_chat/routes/route.dart';
import 'package:hash_chat/utils/theme_provider.dart';

import 'core/bloc_core/bloc_providers.dart';
import 'core/di/injection.dart';
import 'package:provider/provider.dart';

import 'package:hash_chat/utils/app_lifecycle.dart';
import 'package:hash_chat/utils/connectivity.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final user = FirebaseAuth.instance.currentUser;

  void setupAppLifecycle(String uid) {
    WidgetsBinding.instance.addObserver(AppLifecycleHandler(uid));
  }

  if (user != null) {
    setupAppLifecycle(user.uid);
    startListeningConnectivity();
  }

  configureDependencies();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final ThemeMode themeMode;

  const MyApp({super.key, this.themeMode = ThemeMode.system});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MultiBlocProvider(
      providers: AppProviders().providers,
      child: MaterialApp.router(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeProvider.themeMode,
          debugShowCheckedModeBanner: false,
          routeInformationParser: AppRouter.router.routeInformationParser,
          routerDelegate: AppRouter.router.routerDelegate,
          routeInformationProvider: AppRouter.router.routeInformationProvider,
      ),
    );
  }
}

