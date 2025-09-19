import 'package:flutter/material.dart';
import 'package:medcare/features/doctors/presentation/views/doctor_details_view.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/doctor_datails_body.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/popular_doctor_item.dart';

class PopularDoctorListView extends StatelessWidget {
  const PopularDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorDetials()));
        },child: const PopularDoctorItem());
      },
    );
  }
}
