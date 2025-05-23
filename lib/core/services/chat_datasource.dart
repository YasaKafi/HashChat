import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/message/message_model.dart';

class ChatDatasource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<MessageModel>> getMessages(String chatId, String currentUserId, String senderId) async* {
    // Reset unreadCount for the sender
    await _firestore.collection('users').doc(senderId).update({
      'unreadCount.$currentUserId': 0,
    });

    // Return the stream of messages
    yield* _firestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('timestamp')
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => MessageModel.fromJson(doc.data())).toList());
  }

  Future<void> sendMessage(String chatId, MessageModel message, String senderId, String receiverId) async {
    final docRef = _firestore.collection('chats').doc(chatId).collection('messages').doc();
    await docRef.set(message.copyWith(id: docRef.id).toJson());


    await _firestore.collection('users').doc(senderId).update({
      'lastMessage': message.content,
      'unreadCount.$receiverId': FieldValue.increment(1),
    });

    await _firestore.collection('users').doc(receiverId).update({
      'lastMessage': message.content,
    });
  }


}