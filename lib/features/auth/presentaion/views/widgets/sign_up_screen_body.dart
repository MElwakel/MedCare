import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medcare/core/widgets/custom_button.dart';
import 'package:medcare/core/widgets/custom_text_form_field.dart';
import 'package:medcare/core/widgets/password_text_filed.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/already_have_an_account_widget.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/social_button.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/or_divider.dart';
import 'package:medcare/generated/l10n.dart';


class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // Logo
              Center(
                child: Icon(
                  Icons.health_and_safety,
                  size: 60,
                  color: Colors.red[700],
                ),
              ),
              const SizedBox(height: 20),

               Text(
               S.of(context).joinMediCare,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LibreBaskerville',
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                S.of(context).signUpEasilyBookYourMedicalConsultationAndStayHealthyAnytime,
                style: const TextStyle(color: Colors.grey, fontFamily: 'aago'),
              ),
              const SizedBox(height: 30),

              // Full Name
              CustomTextFormField(
                hintText: S.of(context).fullName,
                iconData: Icons.person_outline,
                textInputType: TextInputType.name,
              ),

              const SizedBox(height: 15),
              CustomTextFormField(
                hintText: S.of(context).email,
                iconData: Icons.email_outlined,
                textInputType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 15),

              PasswordTextFormField(hintText: S.of(context).password),
              const SizedBox(height: 15),
              PasswordTextFormField(hintText: S.of(context).confirmPassword),

              const SizedBox(height: 20),

              CustomButton(text: S.of(context).signUp, onTap: () {}),

              const SizedBox(height: 25),

              const OrDivider(),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    iconData: FontAwesomeIcons.google,
                    color: Colors.red,
                    text: "Google",
                    onPressed: () {},
                  ),
                  const SizedBox(width: 10),
                  SocialButton(
                    iconData: FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    text: "Facebook",
                    onPressed: () {},
                  ),
                ],
              ),

              const SizedBox(height: 20),
              AlreadyHaveAnAccountWidget(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
