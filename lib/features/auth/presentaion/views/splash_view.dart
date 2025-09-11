
import 'package:flutter/material.dart';
import 'package:medcare/features/auth/presentaion/views/sign_in_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashView> {
  @override
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
     Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=>SignInView()),);
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/logo.png')),
    );
  }
}