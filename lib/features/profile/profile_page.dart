import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hash_chat/utils/theme.dart';

import '../../utils/theme_provider.dart';
import '../auth/bloc/auth_bloc.dart';
import 'bloc/profile_bloc.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();

    final profileState = context.read<ProfileBloc>().state;
    final isInitial = profileState.maybeWhen(
      initial: () => true,
      orElse: () => false,
    );

    if (isInitial) {
      final userId = FirebaseAuth.instance.currentUser?.uid ?? '';
      context.read<ProfileBloc>().add(ProfileEvent.fetchProfile(userId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (user) => Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(user.profilePicture ?? ''),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    user.name,
                    style: txtSecondaryTitle,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.email,
                    style: txtPrimarySubTitle,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Dark Theme'),
                      Switch(
                        value: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark,
                        onChanged: (isDark) {
                          Provider.of<ThemeProvider>(context, listen: false).toggleTheme(isDark);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthEvent.signOut());
                      },
                      icon: const Icon(Icons.logout),
                      label: const Text('Logout'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            error: (message) => Center(child: Text('Error: $message')),
          );
        },
      ),
    );
  }
}
