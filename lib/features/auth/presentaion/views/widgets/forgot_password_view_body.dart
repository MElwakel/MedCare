import 'package:flutter/material.dart';
import 'package:medcare/core/widgets/custom_button.dart';
import 'package:medcare/core/widgets/custom_text_form_field.dart';

import 'lock_image_widget.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: const [
              SizedBox(height: 30),
              LockImageWidget(
                icon: Icons.lock,
              ),
              SizedBox(height: 50),
              Text(
                "Forgot Password ?",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "LibreBaskerville",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Don't worry! it happens. Please enter the address associated with your account",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "aago",
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              CustomTextFormField(
                hintText: "Email",
                iconData: Icons.email_outlined,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              CustomButton(text: "Send me email"),

            ],
          ),
        ),
      ),
    );
  }
}
