import 'package:flutter/material.dart';
import 'package:medcare/generated/l10n.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).dontHaveAnAccount,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            S.of(context).signUp,
            style: TextStyle(
              color: Color(0xFF00796B),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
