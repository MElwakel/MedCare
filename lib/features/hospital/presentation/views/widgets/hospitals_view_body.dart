import 'package:flutter/material.dart';
import 'package:medcare/features/hospital/domain/entities/hospital_entity.dart';
import 'package:medcare/features/hospital/presentation/views/hospital_details_view.dart';
import 'package:medcare/features/hospital/presentation/views/widgets/hospital_card.dart';

class HospitalsViewBody extends StatelessWidget {
  const HospitalsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final hospitals = [
      HospitalEntity(
        name: '57357 Hospital',
        address:
            'Sekat Hadid Al Mahger, Zeinhom, El Sayeda Zeinab, Cairo Governorate 4260102',
        imageUrl: 'assets/images/57357.jpg',
        rating: 4.5,
        numberOfViews: 50000,
        specialties: [
          "Oncology",
          "Radiology",
          "Surgery",
          "Pediatrics",
          "Pathology",
          "Pharmacy",
          "Nutrition",
          "Psychology",
        ],
      ),
      HospitalEntity(
        name: '57357 Hospital',
        address:
            'Sekat Hadid Al Mahger, Zeinhom, El Sayeda Zeinab, Cairo Governorate 4260102',
        imageUrl: 'assets/images/57357.jpg',
        rating: 4.5,
        numberOfViews: 50000,
        specialties: [
          "Oncology",
          "Radiology",
          "Surgery",
          "Pediatrics",
          "Pathology",
          "Pharmacy",
          "Nutrition",
          "Psychology",
        ],
      ),
      HospitalEntity(
        name: '57357 Hospital',
        address:
            'Sekat Hadid Al Mahger, Zeinhom, El Sayeda Zeinab, Cairo Governorate 4260102',
        imageUrl: 'assets/images/57357.jpg',
        rating: 4.5,
        numberOfViews: 50000,
        specialties: [
          "Oncology",
          "Radiology",
          "Surgery",
          "Pediatrics",
          "Pathology",
          "Pharmacy",
          "Nutrition",
          "Psychology",
        ],
      ),
      HospitalEntity(
        name: '57357 Hospital',
        address:
            'Sekat Hadid Al Mahger, Zeinhom, El Sayeda Zeinab, Cairo Governorate 4260102',
        imageUrl: 'assets/images/57357.jpg',
        rating: 4.5,
        numberOfViews: 50000,
        specialties: [
          "Oncology",
          "Radiology",
          "Surgery",
          "Pediatrics",
          "Pathology",
          "Pharmacy",
          "Nutrition",
          "Psychology",
        ],
      ),

    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: hospitals.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final hospital = hospitals[index];
          return HospitalCard(
            hospital: hospital,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HospitalDetailsView(hospital: hospital),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
