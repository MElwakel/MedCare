import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatelessWidget {
  const ButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
          ],
        );
    }
}