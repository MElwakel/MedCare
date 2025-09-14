import 'package:flutter/material.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/create_new_password_view_body.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CreateNewPasswordViewBody())
    );
  }
}

