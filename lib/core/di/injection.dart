import 'package:get_it/get_it.dart';
import 'package:hash_chat/core/repositories/chat/chat_repository.dart';
import 'package:hash_chat/core/repositories/chat/chat_repository_impl.dart';
import 'package:hash_chat/core/repositories/home/home_repository.dart';
import 'package:hash_chat/core/repositories/home/home_repository_impl.dart';
import 'package:hash_chat/core/repositories/profile/profile_repository.dart';
import 'package:hash_chat/core/repositories/profile/profile_repository_impl.dart';
import 'package:hash_chat/core/services/chat_datasource.dart';
import 'package:hash_chat/core/services/home_datasource.dart';
import 'package:hash_chat/core/services/profile_datasource.dart';
import 'package:hash_chat/features/chat/bloc/chat_bloc.dart';
import 'package:hash_chat/features/home/bloc/home_bloc.dart';
import 'package:hash_chat/features/profile/bloc/profile_bloc.dart';

import '../../features/auth/bloc/auth_bloc.dart';
import '../repositories/auth/auth_repository.dart';
import '../repositories/auth/auth_repository_impl.dart';
import '../services/auth_datasource.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // 1) Service
  getIt.registerLazySingleton<AuthDatasource>(() => AuthDatasource());
  getIt.registerLazySingleton<HomeDatasource>(() => HomeDatasource());
  getIt.registerLazySingleton<ChatDatasource>(() => ChatDatasource());
  getIt.registerLazySingleton<ProfileDatasource>(() => ProfileDatasource());

  // 2) Repository
  getIt.registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(getIt<AuthDatasource>()),
  );

  getIt.registerLazySingleton<HomeRepository>(
        () => HomeRepositoryImpl(getIt<HomeDatasource>()),
  );

  getIt.registerLazySingleton<ChatRepository>(
        () => ChatRepositoryImpl(getIt<ChatDatasource>()),
  );

  getIt.registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImpl(getIt<ProfileDatasource>()),
  );

  // 3) Bloc
  getIt.registerFactory<AuthBloc>(
        () => AuthBloc(authRepository: getIt<AuthRepository>()),
  );

  getIt.registerFactory<HomeBloc>(
        () => HomeBloc(homeRepository: getIt<HomeRepository>()),
  );

  getIt.registerFactory<ChatBloc>(
        () => ChatBloc(chatrepository: getIt<ChatRepository>()),
  );

  getIt.registerFactory<ProfileBloc>(
        () => ProfileBloc(profileRepository: getIt<ProfileRepository>()),
  );


}
