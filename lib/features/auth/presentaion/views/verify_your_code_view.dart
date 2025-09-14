import 'package:flutter/material.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/verify_your_code_view_body.dart';

class VerifyYourCodeView extends StatelessWidget {
  const VerifyYourCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const VerifyYourCodeViewBody()
      ),
    );
  }
}



