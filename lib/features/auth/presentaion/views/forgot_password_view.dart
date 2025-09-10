import 'package:flutter/material.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const ForgotPasswordViewBody()
      ),
    );
  }
}



