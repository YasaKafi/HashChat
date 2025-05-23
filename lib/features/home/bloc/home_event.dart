part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.fetchUsers() = _FetchUsers;
  const factory HomeEvent.usersReceived(List<UserModel> users) = _UsersReceived;
  const factory HomeEvent.usersReceivedError(String message) = _UsersReceivedError;
}
