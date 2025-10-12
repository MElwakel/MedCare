
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  super.initState();

  Future.delayed(const Duration(seconds: 2), () {
    if (mounted) {
      context.go(SignInView.id);
    }
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('assets/images/logo.png')),
    );
  }
}