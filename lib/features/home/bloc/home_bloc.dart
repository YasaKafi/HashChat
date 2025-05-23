import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hash_chat/models/user/user_model.dart';
import '../../../core/repositories/home/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repository;
  StreamSubscription<List<UserModel>>? _subscription;

  HomeBloc({required HomeRepository homeRepository})
      : _repository = homeRepository,
        super(const HomeState.initial()) {
    on<_FetchUsers>(_onFetchUsers);
    on<_UsersReceived>(_onUsersReceived);
    on<_UsersReceivedError>(_onUsersReceivedError);
  }

  Future<void> _onFetchUsers(
      _FetchUsers event,
      Emitter<HomeState> emit,
      ) async {
    emit(const HomeState.loading());
    await _subscription?.cancel();

    _subscription = _repository.fetchUsers().listen(
          (users) {
        add(HomeEvent.usersReceived(users));
      },
      onError: (e) {
        add(HomeEvent.usersReceivedError(e.toString()));
      },
    );
  }

  void _onUsersReceived(
      _UsersReceived event,
      Emitter<HomeState> emit,
      ) {
    emit(HomeState.success(event.users));
  }

  void _onUsersReceivedError(
      _UsersReceivedError event,
      Emitter<HomeState> emit,
      ) {
    emit(HomeState.error(event.message));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
