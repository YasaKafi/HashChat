import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hash_chat/core/di/injection.dart';
import 'package:hash_chat/core/repositories/chat/chat_repository.dart';
import 'package:hash_chat/core/repositories/home/home_repository.dart';
import 'package:hash_chat/core/repositories/profile/profile_repository.dart';
import 'package:hash_chat/features/auth/bloc/auth_bloc.dart';
import 'package:hash_chat/features/chat/bloc/chat_bloc.dart';
import 'package:hash_chat/features/home/bloc/home_bloc.dart';
import 'package:hash_chat/features/profile/bloc/profile_bloc.dart';

import '../repositories/auth/auth_repository.dart';


class AppProviders{

  final providers = [
    BlocProvider<AuthBloc>(
      create: (_) => AuthBloc(authRepository: getIt<AuthRepository>()),
    ),

    BlocProvider<HomeBloc>(
      create: (_) => HomeBloc(homeRepository: getIt<HomeRepository>()),
    ),

    BlocProvider<ChatBloc>(
      create: (_) => ChatBloc(chatrepository: getIt<ChatRepository>()),
    ),

    BlocProvider<ProfileBloc>(
      create: (_) => ProfileBloc(profileRepository: getIt<ProfileRepository>()),
    ),

  ];

}
