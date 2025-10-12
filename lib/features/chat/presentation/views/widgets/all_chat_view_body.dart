import 'package:flutter/material.dart';
import 'package:medcare/features/chat/presentation/views/widgets/chat_item.dart';

class AllChatViewBody extends StatelessWidget {
  const AllChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return ChatItem(
          imageUrl: "assets/images/pharmacy1.jpeg",
          name: "Ahmed Rezk",
          message: "صل علي النبي صلى الله عله وسلم",
          time: "1m",
          unreadCount: 2,
        );
      },
    );
  }
}
