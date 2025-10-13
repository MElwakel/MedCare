import 'package:flutter/material.dart';
import 'package:medcare/core/helpers/build_custom_app_bar.dart';
import 'package:medcare/features/home/presentation/widgets/button_navigation_bar.dart';
import 'package:medcare/features/schedule/presentation/views/widgets/schedule_view_body.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  static const String id = '/sechdule';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'MedCare Schedule'),
      body: ScheduleViewBody(),
      bottomNavigationBar: ButtonNavigationBar(selectedIndex: 1)
    );
  }
}