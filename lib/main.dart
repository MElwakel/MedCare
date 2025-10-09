import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medcare/features/home/presentation/views/Home_services_view.dart';
import 'package:medcare/features/home/presentation/views/medical_services_view.dart';
import 'package:medcare/features/pharmacy/controllers/pharmacy_controller.dart';
import 'package:medcare/features/pharmacy/pharmacy_view.dart';
import 'package:medcare/features/pharmacy/shopping_basket/cart.dart';
import 'package:provider/provider.dart';

// import 'package:medcare/features/splash/splash_view.dart';

import 'generated/l10n.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PharmacyController()),
        ChangeNotifierProvider(create: (_) => Cart()),
      ],
      child: const MedCare(),
    ),
  );
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
      locale: Locale('ar'),
      home: const PharmacyView(),
    );
  }
}
