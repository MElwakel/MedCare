
import 'package:flutter/material.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/sign_up_screen_body.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SignUpScreenBody(),
       
      ),
    );
  }
}
