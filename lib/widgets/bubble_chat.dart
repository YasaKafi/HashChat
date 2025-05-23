import 'package:flutter/material.dart';
import 'package:hash_chat/utils/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final String photoProfile;
  final String time;
  final bool isSender;
  final bool isTyping;

  const ChatBubble({
    super.key,
    required this.text,
    required this.time,
    required this.photoProfile,
    required this.isSender,
    this.isTyping = false,
  });

  @override
  Widget build(BuildContext context) {
    final bubbleColor = isSender ? const Color(0xFFE3F2FD) : const Color(0xFFF5F5F5);
    final align = isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final radius = isSender
        ? const BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
      bottomLeft: Radius.circular(16),
    )
        : const BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
      bottomRight: Radius.circular(16),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment:
        isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isSender)
             CircleAvatar(
              backgroundImage: NetworkImage(photoProfile),
              radius: 16,
            ),
          if (!isSender) const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: align,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: bubbleColor,
                    borderRadius: radius,
                  ),
                  child: isTyping
                      ? const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 4),
                      Icon(Icons.more_horiz, size: 18),
                    ],
                  )
                      : Text(
                    text,
                    style: txtSecondaryTitle.copyWith(
                      fontSize: 14,
                      color: isSender ? Colors.black : Colors.black54,
                    ),
                  ),
                ),
                if (time.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      time,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
