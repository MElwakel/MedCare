import 'package:flutter/material.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/doctors_view_body.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: DoctorsViewBody()),
    );
  }
}

