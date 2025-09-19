import 'package:flutter/material.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/doctor_datails_body.dart';

class DoctorDetials extends StatelessWidget {
  const DoctorDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoctorDetailsViewBody(),
    );
  }
}