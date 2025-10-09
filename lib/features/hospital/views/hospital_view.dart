import 'package:flutter/material.dart';
import 'package:medcare/features/hospital/views/hospital_details_view.dart';

class HospitalView extends StatelessWidget {
  const HospitalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FB),
      body:HospitalDetailsView(),
    );
  }
}