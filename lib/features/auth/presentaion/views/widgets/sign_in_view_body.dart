import 'package:flutter/material.dart';
import 'package:medcare/core/widgets/custom_button.dart';
import 'package:medcare/core/widgets/custom_text_form_field.dart';
import 'package:medcare/core/widgets/password_text_field.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/dont_have_an_account_widget.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/or_divider.dart';
import 'package:medcare/generated/l10n.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          // Logo
          const SizedBox(height: 32),
          Text(
            S.of(context).welcome,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'LibreBaskerville',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).signInToYourAccount,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'aago',
            ),
          ),
          const SizedBox(height: 32),
          CustomTextFormField(
            hintText: S.of(context).email, 
            iconData:  Icons.email_outlined, 
            textInputType: TextInputType.emailAddress
            
          ),
          const SizedBox(height: 16),
          PasswordTextFormField(
            hintText: S.of(context).password,
            iconData: Icons.lock_outline,
            textInputType: TextInputType.visiblePassword,
            
          ),
          const SizedBox(height: 24),
          CustomButton(
            text: S.of(context).signIn,
            onTap: () {},
          ),
          const SizedBox(height: 16),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                S.of(context).forgotPassword,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          OrDivider(),
          const SizedBox(height: 32),
          DontHaveAnAccountWidget(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}