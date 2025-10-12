import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medcare/core/widgets/custom_button.dart';
import 'package:medcare/core/widgets/password_text_filed.dart';
import 'package:medcare/features/home/presentation/views/home_view.dart';


import 'lock_image_widget.dart';

class CreateNewPasswordViewBody extends StatelessWidget {
  const CreateNewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            LockImageWidget(icon: Icons.lock_person_rounded),
            SizedBox(height: 50),
            Text(
              "Create New Password",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "LibreBaskerville",
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Your new password must be different from previoustly used passwords",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "aago",
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            PasswordTextFormField(hintText: "New Password"),
            SizedBox(height: 16),
            PasswordTextFormField(hintText: "Confirm New Password"),
            SizedBox(height: 32),
            CustomButton(
              text: "Confirm New Password",
              onTap: () {
               context.go(HomePage.id);

              },
            ),
          ],
        ),
      ),
    );
  }
}
