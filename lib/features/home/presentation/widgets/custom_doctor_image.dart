
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDoctorImage extends StatelessWidget {
  const CustomDoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 34,
          backgroundImage: AssetImage('assets/images/p3.jpg'),
        ),
        const SizedBox(height: 6),
        const Text(
          'Dr. Shaher Ayman',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        Text(
          'Nutrition Specialist',
          style: TextStyle(fontSize: 10, color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
