import 'package:flutter/material.dart';

class BuildCategory extends StatelessWidget {
  const BuildCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildCategory(Icons.medical_services_outlined, "Doctor"),
                      _buildCategory(Icons.local_pharmacy_outlined, "Pharmacy"),
                      _buildCategory(Icons.local_hospital_outlined, "Hospital"),
                      _buildCategory(Icons.emergency_outlined, "Ambulance"),
                    ],
                  );
  }
}


Widget _buildCategory(IconData icon, String label) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.green),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Colors.black87),
        ),
      ],
    );
  }


