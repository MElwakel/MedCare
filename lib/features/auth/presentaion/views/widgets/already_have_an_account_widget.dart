import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medcare/features/auth/presentaion/views/sign_in_view.dart';
import 'package:medcare/generated/l10n.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).alreadyHaveAnAccount,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        TextButton(
          onPressed: () {
           context.go(SignInView.id);

          },
          child: Text(
            S.of(context).signIn,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF00796B),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
