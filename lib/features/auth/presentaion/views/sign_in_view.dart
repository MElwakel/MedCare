import 'package:flutter/material.dart';
import 'package:medcare/generated/l10n.dart';
import 'widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).signIn,style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SignInViewBody()
      ),
    );
  }
}