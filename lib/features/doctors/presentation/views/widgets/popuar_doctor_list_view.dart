import 'package:flutter/material.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/popular_doctor_item.dart';

class PopularDoctorListView extends StatelessWidget {
  const PopularDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const PopularDoctorItem();
      },
    );
  }
}
