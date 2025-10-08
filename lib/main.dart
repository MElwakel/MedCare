import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medcare/features/splash/splash_view.dart';

// import 'package:medcare/features/splash/splash_view.dart';

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

      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('en'),
      home: const SplashView(),
    );
  }
}
