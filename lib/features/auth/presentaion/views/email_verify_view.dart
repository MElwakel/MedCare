import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medcare/core/widgets/custom_button.dart';
import 'package:medcare/features/auth/presentaion/views/verify_your_code_view.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/email_verify_view_body.dart';

class EmailVerifyView extends StatelessWidget {
  const EmailVerifyView({super.key});

  static const String id = '/emailverify';

  @override
  Widget build(BuildContext context) {
    return EmailVerifyViewBody();
  }
}
