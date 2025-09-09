import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medcare/features/auth/presentaion/views/forgot_password_view.dart';
import 'package:medcare/features/auth/presentaion/views/email_verify_view.dart';
import 'package:medcare/features/auth/presentaion/views/phone_verify_view.dart';
import 'package:medcare/features/auth/presentaion/views/verify_your_identity_view.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MedCare());
}

class MedCare extends StatelessWidget {
  const MedCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

      locale: Locale("en"),

      home: PhoneVerifyView(),
    );
  }
}
