import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hash_chat/models/user/user_model.dart';

import '../../../core/repositories/auth/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;

  AuthBloc({required AuthRepository authRepository})
      : _repository = authRepository,
        super(const AuthState.initial()) {
    on<_LoginWithGoogle>(_loginWithGoogle);
    on<_SignOut>(_signOut);
  }

  Future<void> _loginWithGoogle(
      _LoginWithGoogle event,
      Emitter<AuthState> emit,
      ) async {
    emit(const AuthState.loading());

    final result = await _repository.signInWithGoogle();

    result.fold(
          (err) => emit(AuthState.error(err)),
          (user) => emit(AuthState.success(user)),
    );
  }

  Future<void> _signOut(
      _SignOut event,
      Emitter<AuthState> emit,
      ) async {
    emit(const AuthState.loading());

    try {
      await _repository.signOut();
      emit(const AuthState.initial());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}




