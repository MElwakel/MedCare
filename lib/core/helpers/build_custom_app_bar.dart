import 'package:flutter/material.dart';

import '../utiles/app_colors.dart';
import '../widgets/back_icon_widget.dart';

AppBar buildCustomAppBar({required String title}) {

  return AppBar(
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
      title,
      style: TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}