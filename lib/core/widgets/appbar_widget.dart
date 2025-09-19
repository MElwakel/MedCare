import 'package:flutter/material.dart';
import 'package:medcare/core/widgets/back_icon_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        BackIconWidget(),
        SizedBox(width: 60),
        Text("Doctor Details", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
      ],
    );
  }
}