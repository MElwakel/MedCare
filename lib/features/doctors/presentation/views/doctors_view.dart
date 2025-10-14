import 'package:flutter/material.dart';
import 'package:medcare/core/helpers/build_custom_app_bar.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/doctors_view_body.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});

  static const String id = '/doctorsview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: "Doctor"),
      body: SafeArea(child: DoctorsViewBody()),
    );
  }
}

