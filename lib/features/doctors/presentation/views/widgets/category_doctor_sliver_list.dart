import 'package:flutter/material.dart';

import 'category_doctor_item.dart';

class CategoryDoctorSliverList extends StatelessWidget {
  const CategoryDoctorSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 20, (context, index) {
        return CategoryDoctorItem();
      }),
    );
  }
}
