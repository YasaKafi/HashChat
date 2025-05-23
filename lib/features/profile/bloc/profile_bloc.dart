import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hash_chat/models/user/user_model.dart';

import '../../../core/repositories/profile/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _repository;

  ProfileBloc({required ProfileRepository profileRepository})
      : _repository = profileRepository, super(const _Initial()) {
    on<_FetchProfile>((event, emit) async {
      emit(const _Loading());
      try {
        final profile = await _repository.fetchUserbyId(event.userId);
        emit(ProfileState.success(profile));
      } catch (e) {
        emit(ProfileState.error(e.toString()));
      }
    });
  }
}
