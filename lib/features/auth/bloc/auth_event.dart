part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.reset() = _Reset;
  const factory AuthEvent.loginWithGoogle() = _LoginWithGoogle;
  const factory AuthEvent.signOut() = _SignOut;
}
