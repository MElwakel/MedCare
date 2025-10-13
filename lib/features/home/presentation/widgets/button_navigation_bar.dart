import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medcare/features/chat/presentation/views/all_chat_view.dart';
import 'package:medcare/features/home/presentation/views/home_view.dart';
import 'package:medcare/features/schedule/presentation/views/schedule_view.dart';

class ButtonNavigationBar extends StatelessWidget {
  final int selectedIndex;
  const ButtonNavigationBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      currentIndex: selectedIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            context.go(HomePage.id);
            break;
          case 1:
            context.go(ScheduleView.id);
            break;
          case 2:
            context.go(AllChatView.id);
            break;
          case 3:
            //context.go('/profile');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Schedule"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
      ],
    );
  }
}
