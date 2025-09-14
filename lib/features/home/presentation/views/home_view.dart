import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png"),
            Text(
              "Welcome to",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "LibreBaskerville",
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Home",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "LibreBaskerville",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
