import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medcare/core/widgets/custom_button.dart';
import 'package:medcare/features/auth/presentaion/views/create_new_password_view.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/lock_image_widget.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/pin_digits_widget.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/verify_your_code_view_body.dart';

class VerifyYourCodeView extends StatelessWidget {
  const VerifyYourCodeView({super.key});

  static const String id = '/verifyyourcodeview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VerifyYourCodeViewBody()
      ),
    );
  }
}



