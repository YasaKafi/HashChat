import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hash_chat/utils/theme.dart';

import '../../models/message/message_model.dart';
import '../../widgets/bubble_chat.dart';
import 'bloc/chat_bloc.dart';

class ChatPage extends StatefulWidget {
  final String userId;
  final String photoUrl;
  final String name;

  const ChatPage({super.key, required this.userId, required this.photoUrl, required this.name});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late final String currentUserId;
  late final String chatId;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeChat();
  }

  void _initializeChat() async {
    currentUserId = FirebaseAuth.instance.currentUser!.uid;
    chatId = _generateChatId(currentUserId, widget.userId);

    context.read<ChatBloc>().add(ChatEvent.loadMessages(chatId, currentUserId, widget.userId));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _generateChatId(String a, String b) {
    return a.hashCode <= b.hashCode ? '${a}_$b' : '${b}_$a';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF794BC4),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context, widget.name),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration:  BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: BlocBuilder<ChatBloc, ChatState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Center(child: CircularProgressIndicator()),
                      loading: () => const Center(child: CircularProgressIndicator()),
                      success: (messages) => ListView.builder(
                        itemCount: messages.length,
                        reverse: true,
                        itemBuilder: (context, index) {
                          final msg = messages[messages.length - index - 1];
                          return ChatBubble(
                            text: msg.content,
                            time: TimeOfDay.fromDateTime(msg.timestamp).format(context),
                            isSender: msg.senderId == currentUserId,
                            photoProfile: widget.photoUrl,
                          );
                        },
                      ),
                      error: (msg) => Center(child: Text('Error: $msg')),
                    );
                  },
                ),
              ),
            ),
            _buildInputField(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String name) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      decoration: const BoxDecoration(
        color: Color(0xFF794BC4),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          const SizedBox(width: 16),
           Expanded(
            child: Text(
              name.toUpperCase(),
              style: txtPrimaryTitle.copyWith(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Icon(Icons.account_circle_outlined, color: blackColor),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Type a message',
                border: InputBorder.none,
              ),
              onSubmitted: (_) => _sendMessage(),
            ),
          ),
          GestureDetector(
            onTap: _sendMessage,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF794BC4),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(12),
              child: const Icon(Icons.send, color: Colors.white, size: 20),
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    final message = MessageModel(
      id: '',
      senderId: currentUserId,
      content: text,
      timestamp: DateTime.now(),
    );

    context.read<ChatBloc>().add(ChatEvent.sendMessage(chatId: chatId, message: message, senderId: currentUserId, receiverId: widget.userId));
    _controller.clear();
  }
}
