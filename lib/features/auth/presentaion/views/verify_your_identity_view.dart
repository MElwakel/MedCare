import 'package:flutter/material.dart';
import 'package:medcare/features/auth/presentaion/views/verify_your_identity_body_view.dart';

class VerifyYourIdentity extends StatelessWidget {
  const VerifyYourIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerifyYourIdentityBody(),
      );
  }
}
