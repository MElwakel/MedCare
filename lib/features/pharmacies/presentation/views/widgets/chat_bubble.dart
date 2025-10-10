import 'package:flutter/material.dart';
import '../../../domain/entities/message_entity.dart';

class ChatBubble extends StatelessWidget {
  final MessageEntity message;

  const ChatBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final isSender = message.isSender;
    final alignment = isSender ? Alignment.centerRight : Alignment.centerLeft;
    final color = isSender ? const Color(0xFF00796B) : Colors.grey[300];
    final textColor = isSender ? Colors.white : Colors.black;

    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12.0),
            topRight: const Radius.circular(12.0),
            bottomLeft: isSender ? const Radius.circular(12.0) : Radius.zero,
            bottomRight: isSender ? Radius.zero : const Radius.circular(12.0),
          ),
        ),
        child: Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              message.text,
              style: TextStyle(color: textColor, fontSize: 16.0),
            ),
            const SizedBox(height: 4.0),
            Text(
              '${message.timestamp.hour.toString().padLeft(2, '0')}:${message.timestamp.minute.toString().padLeft(2, '0')} ${message.timestamp.hour < 12 ? 'AM' : 'PM'}',
              style: TextStyle(
                color: textColor.withValues(alpha: 0.7),
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
