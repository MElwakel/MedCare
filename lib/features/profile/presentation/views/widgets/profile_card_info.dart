import 'package:flutter/material.dart';
import 'package:medcare/features/profile/presentation/views/widgets/profile_data_item.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final infoItems = [
      {'icon': Icons.cake, 'title': 'Date of Birth', 'value': 'March 15, 2002'},
      {'icon': Icons.male, 'title': 'Gender', 'value': 'male'},
      {'icon': Icons.bloodtype, 'title': 'Blood Type', 'value': 'A+'},
      {'icon': Icons.phone, 'title': 'Phone', 'value': '+201119278345'},
      {'icon': Icons.email, 'title': 'Email', 'value': 'rezk18649@gmail.com'},
      {
        'icon': Icons.location_on,
        'title': 'Address',
        'value': 'Assiut, manfalot',
      },
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            infoItems.map((item) {
              return ProfileDataItem(
                iconData: item["icon"] as IconData,
                title: item["title"] as String,
                value: item["value"] as String,
              );
            }).toList(),
      ),
    );
  }
}
