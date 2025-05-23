
import 'package:go_router/go_router.dart';
import 'package:hash_chat/features/auth/login_page.dart';
import 'package:hash_chat/features/chat/chat_page.dart';
import 'package:hash_chat/features/splash/splash_screen.dart';
import 'package:hash_chat/widgets/bottom_navbar.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: 'splash',
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: 'chat',
        path: '/chat/:userId',
        builder: (context, state) {
          final userId = state.pathParameters['userId']!;
          final photoUrl = state.uri.queryParameters['photoUrl'] ?? '';
          final name = state.uri.queryParameters['name'] ?? '';
          return ChatPage(userId: userId, photoUrl: photoUrl, name: name);
        },
      ),
      GoRoute(
        name: 'navbar',
        path: '/navbar/:pageIndex',
        builder: (context, state) {
          final pageIndex = int.parse(state.pathParameters['pageIndex'] ?? '0');
          return BottomNavbar(pageIndex: pageIndex);
        },
      ),

    ],
  );
}
