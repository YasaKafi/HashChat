import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../utils/theme.dart';
import '../auth/bloc/auth_bloc.dart';
import 'bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.fetchUsers());
  }

  String formatLastSeen(DateTime dateTime) {
    final now = DateTime.now();
    final diff = now.difference(dateTime);

    if (diff.inDays == 0 && now.day == dateTime.day) {
      return DateFormat.Hm().format(dateTime); // HH:mm
    } else if (diff.inDays == 1 || (diff.inDays == 0 && now.day != dateTime.day)) {
      return 'Yesterday';
    } else if (diff.inDays <= 6) {
      return DateFormat.EEEE().format(dateTime); // Monday, etc
    } else {
      return DateFormat('dd/MM/yy').format(dateTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HashChat',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        message ?? 'Logout failed',
                        style: txtSecondaryTitle.copyWith(
                          fontWeight: FontWeight.w500,
                          color: baseColor,
                        ),
                      ),
                      backgroundColor: redMedium,
                    ),
                  );
                  context.read<AuthBloc>().add(const AuthEvent.reset());
                },
                initial: () {
                  context.goNamed('login');
                },
              );
            },
            builder: (context, state) {
              return IconButton(
                icon: const Icon(Icons.login, color: redMedium),
                onPressed: state.maybeWhen(
                  loading: () => null,
                  orElse: () => () {
                    context.read<AuthBloc>().add(const AuthEvent.signOut());
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (msg) => Center(child: Text('Alamak: $msg')),
            success: (users) {
              if (users.isEmpty) {
                return const Center(child: Text('No users available.'));
              }
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];

                  final maxUnreadCount = user.unreadCount.values.isNotEmpty
                      ? user.unreadCount.values.reduce((a, b) => a > b ? a : b)
                      : 0;

                  return ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(user.profilePicture),
                          radius: 25,
                        ),
                        if (user.isOnline == true)
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 1.5),
                              ),
                            ),
                          ),
                      ],
                    ),
                    title: Text(user.name.toUpperCase()),
                    subtitle: Text(user.lastMessage ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          user.lastSeen != null ? formatLastSeen(user.lastSeen!) : 'Online',
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        if (maxUnreadCount > 0)
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              maxUnreadCount.toString(),
                              style: const TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                      ],
                    ),
                    onTap: () {
                      context.pushNamed(
                        'chat',
                        pathParameters: {'userId': user.id},
                        queryParameters: {
                          'photoUrl': user.profilePicture,
                          'name': user.name,
                        },
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
