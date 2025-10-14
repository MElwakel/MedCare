import 'package:flutter/material.dart';
import 'package:medcare/core/helpers/build_custom_app_bar.dart';
import 'package:medcare/features/hospital/presentation/views/widgets/hospitals_view_body.dart';

class HospitalView extends StatelessWidget {
  const HospitalView({super.key});

  static const String id = '/hospitalview';

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'hospitals',showBackButton: true),
      backgroundColor: const Color(0xffF7F9FB),
      body:  const HospitalsViewBody(),
    );
  }
}