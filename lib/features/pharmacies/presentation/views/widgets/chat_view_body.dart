import 'package:flutter/material.dart';

import '../../../domain/entities/message_entity.dart';
import '../../../domain/entities/pharmacy_entity.dart';
import 'chat_bubble.dart';


class ChatViewBody extends StatefulWidget {
  final PharmacyEntity pharmacy;
  const ChatViewBody({super.key, required this.pharmacy});

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  @override
  void initState() {
    super.initState();

  }
  final TextEditingController messageController = TextEditingController();
  final List<MessageEntity> messages = [
    MessageEntity(
      text: 'Hello! How can we help you today?',
      timestamp: DateTime(2025, 10, 11, 1, 44),
      isSender: false,
    ),
    MessageEntity(
      text: 'Hi, do you have paracetamol in stock?',
      timestamp: DateTime(2025, 10, 11, 1, 45),
      isSender: true,
    ),
    MessageEntity(
      text:
      'Yes, we have paracetamol available. Would you like us to reserve it for you?',
      timestamp: DateTime(2025, 10, 11, 1, 46),
      isSender: false,
    ),
  ];

  void sendMessage() {
    if (messageController.text.isNotEmpty) {
      setState(() {
        messages.add(
          MessageEntity(
            text: messageController.text,
            timestamp: DateTime.now(),
            isSender: true,
          ),
        );
        messageController.clear();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return ChatBubble(message: messages[index]);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: messageController,
                  decoration: InputDecoration(
                    hintText: 'Type a message...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              FloatingActionButton(
                onPressed: sendMessage,
                backgroundColor: const Color(0xFF00796B),
                mini: true,
                child: const Icon(Icons.send, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
