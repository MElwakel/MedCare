import 'package:flutter/material.dart';
import 'package:medcare/core/utiles/app_colors.dart';
import 'package:medcare/features/pharmacies/presentation/views/widgets/pharmacies_view_body.dart';
import '../../../../core/widgets/back_icon_widget.dart';

class PharmaciesView extends StatelessWidget {
  const PharmaciesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(width: 4),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BackIconWidget(),
            ),
          ],
        ),
        centerTitle: true,
        title: Text(
          "pharmacies",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const PharmaciesViewBody(),
    );
  }
}
