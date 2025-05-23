import 'package:dartz/dartz.dart';
import '../../../models/message/message_model.dart';
import '../../services/chat_datasource.dart';
import 'chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatDatasource datasource;

  ChatRepositoryImpl(this.datasource);

  @override
  Stream<List<MessageModel>> getMessages(String chatId, String currentUserId, String senderId) {
    return datasource.getMessages(chatId, currentUserId, senderId);
  }

  @override
  Future<Either<String, void>> sendMessage(String chatId, MessageModel message, String senderId, String receiverId) async {
    try {
      await datasource.sendMessage(chatId, message, senderId, receiverId);
      return const Right(null);
    } catch (e) {
      return Left(e.toString());
    }
  }
}