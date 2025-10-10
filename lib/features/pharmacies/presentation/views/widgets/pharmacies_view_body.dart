import 'package:flutter/material.dart';
import 'package:medcare/features/pharmacies/presentation/views/widgets/pharmacy_card.dart';

import '../../../domain/entities/pharmacy_entity.dart';

class PharmaciesViewBody extends StatelessWidget {
  const PharmaciesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final pharmacies = [
      const PharmacyEntity(
        name: 'HealthPlus Pharmacy',
        address: '123 Main St, Downtown',
        imageUrl: 'assets/images/pharmacy1.jpeg', // replace with real image url
      ),
      const PharmacyEntity(
        name: 'MediCare Central',
        address: '456 Oak Ave, Westside',
        imageUrl: 'assets/images/pharmacy2.jpeg',
      ),
      const PharmacyEntity(
        name: 'QuickMeds Express',
        address: '789 Elm Rd, Eastside',
        imageUrl: 'assets/images/pharmacy3.jpeg',
      ),
      const PharmacyEntity(
        name: 'Community Pharmacy',
        address: '321 Pine St, Northside',
        imageUrl: 'assets/images/pharmacy1.jpeg',
      ),
      const PharmacyEntity(
        name: 'HealthPlus Pharmacy',
        address: '123 Main St, Downtown',
        imageUrl: 'assets/images/pharmacy1.jpeg', // replace with real image url
      ),
      const PharmacyEntity(
        name: 'MediCare Central',
        address: '456 Oak Ave, Westside',
        imageUrl: 'assets/images/pharmacy2.jpeg',
      ),
      const PharmacyEntity(
        name: 'QuickMeds Express',
        address: '789 Elm Rd, Eastside',
        imageUrl: 'assets/images/pharmacy3.jpeg',
      ),
      const PharmacyEntity(
        name: 'Community Pharmacy',
        address: '321 Pine St, Northside',
        imageUrl: 'assets/images/pharmacy1.jpeg',
      ),
      const PharmacyEntity(
        name: 'HealthPlus Pharmacy',
        address: '123 Main St, Downtown',
        imageUrl: 'assets/images/pharmacy1.jpeg', // replace with real image url
      ),
      const PharmacyEntity(
        name: 'MediCare Central',
        address: '456 Oak Ave, Westside',
        imageUrl: 'assets/images/pharmacy2.jpeg',
      ),
      const PharmacyEntity(
        name: 'QuickMeds Express',
        address: '789 Elm Rd, Eastside',
        imageUrl: 'assets/images/pharmacy3.jpeg',
      ),
      const PharmacyEntity(
        name: 'Community Pharmacy',
        address: '321 Pine St, Northside',
        imageUrl: 'assets/images/pharmacy1.jpeg',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: pharmacies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final pharmacy = pharmacies[index];
          return PharmacyCard(
            pharmacy: pharmacy,
            onTap: () {
              // Navigate to details page here
            },
          );
        },
      ),
    );
  }
}
