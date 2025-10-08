import 'package:flutter/material.dart';
import 'package:medcare/features/doctors/presentation/views/doctor_details_view.dart';


import 'category_doctor_item.dart';

class CategoryDoctorSliverList extends StatelessWidget {
  const CategoryDoctorSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 20, (context, index) {
        return GestureDetector(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorDetials()));
        },child:CategoryDoctorItem());
      }),
    );
  }
}
