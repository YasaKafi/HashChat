part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.messagesReceived(List<MessageModel> messages) = _MessagesReceived;
  const factory ChatEvent.messagesError(String message) = _MessagesError;
  const factory ChatEvent.loadMessages(String chatId, String currentUserId, String senderId) = _LoadMessages;
  const factory ChatEvent.sendMessage({
    required String chatId,
    required MessageModel message,
    required String senderId,
    required String receiverId,
  }) = _SendMessage;
}
