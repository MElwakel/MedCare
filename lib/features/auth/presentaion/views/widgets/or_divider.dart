import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            S.of(context).orContinueWithSocialAccount,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
