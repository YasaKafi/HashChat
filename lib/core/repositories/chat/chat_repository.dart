import 'package:dartz/dartz.dart';

import '../../../models/message/message_model.dart';

abstract class ChatRepository {
  Stream<List<MessageModel>> getMessages(String chatId, String currentUserId, String senderId);
  Future<Either<String, void>> sendMessage(String chatId, MessageModel message, String senderId, String receiverId);
}