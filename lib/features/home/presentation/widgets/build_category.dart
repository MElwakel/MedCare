import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medcare/features/hospital/presentation/views/hospital_view.dart';
import 'package:medcare/features/doctors/presentation/views/doctors_view.dart';
import 'package:medcare/features/pharmacies/presentation/views/pharmacies_view.dart';


class BuildCategory extends StatelessWidget {
  const BuildCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
           context.go(DoctorsView.id);
          },
          child: _buildCategory(Icons.medical_services_outlined, "Doctor"),
        ),

        // ------الصيدليات
        GestureDetector(
          onTap: () {
           context.go(PharmaciesView.id);
          },
          child: _buildCategory(Icons.local_pharmacy_outlined, "Pharmacy"),
        ),


        GestureDetector(
          onTap: () {
           context.go(HospitalView.id);
          },
          child: _buildCategory(Icons.local_hospital_outlined, "Hospital"),
        ),


        GestureDetector(
          onTap: () {

          },
          child: _buildCategory(Icons.emergency_outlined, "Ambulance"),
        ),
      ],

    );
  }
}

Widget _buildCategory(IconData icon, String label, {VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
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
    ),
  );
}


