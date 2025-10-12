import 'package:flutter/material.dart';
import 'package:medcare/features/home/presentation/views/home_view_body.dart';
import 'package:medcare/features/home/presentation/widgets/button_navigation_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

   static const String id = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FB),
      body:HomeViewBody(),

      // ===== Bottom Navigation Bar =====
      bottomNavigationBar:ButtonNavigationBar()
    );
  }

  
}
