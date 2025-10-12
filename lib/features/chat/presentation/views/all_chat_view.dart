import 'package:flutter/material.dart';
import 'package:medcare/core/helpers/build_custom_app_bar.dart';
import 'package:medcare/features/chat/presentation/views/widgets/all_chat_view_body.dart';
import 'package:medcare/features/home/presentation/widgets/button_navigation_bar.dart';

class AllChatView extends StatelessWidget {
  const AllChatView({super.key});

  static const String id = '/allChatView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: "MedCare Chats"),
      body: AllChatViewBody(),
      bottomNavigationBar: ButtonNavigationBar(selectedIndex: 2),

    );
  }
}
