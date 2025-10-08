import 'package:flutter/material.dart';
import 'screens/pharmacy_body.dart';

class PharmacyView extends StatefulWidget {
  const PharmacyView({super.key});

  @override
  State<PharmacyView> createState() => _PharmacyViewState();
}

class _PharmacyViewState extends State<PharmacyView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: PharmacyBody()),
    );
  }
}
