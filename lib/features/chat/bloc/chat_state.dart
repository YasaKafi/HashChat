part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.success(List<MessageModel> messages) = _Success;
  const factory ChatState.error(String message) = _Error;
}
