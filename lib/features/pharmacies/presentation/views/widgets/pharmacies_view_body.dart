import 'package:flutter/material.dart';
import 'package:medcare/features/pharmacies/presentation/views/pharmacy_details_view.dart';
import 'package:medcare/features/pharmacies/presentation/views/widgets/pharmacy_card.dart';

import '../../../domain/entities/pharmacy_entity.dart';

class PharmaciesViewBody extends StatelessWidget {
  const PharmaciesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final pharmacies = [
      const PharmacyEntity(
        name: 'HealthPlus Pharmacy',
        address: '123 Main Street, Downtown District, City Center, 12345',
        imageUrl: 'assets/images/pharmacy1.jpeg',
        phone: '+1 (555) 123-4567',
        deliveryStatus: 'Available',
      ),
      const PharmacyEntity(
        name: 'MediCare Central',
        address: '456 Oak Ave, Westside, 67890',
        imageUrl: 'assets/images/pharmacy2.jpeg',
        phone: '+1 (555) 987-6543',
        deliveryStatus: 'Available',
      ),
      const PharmacyEntity(
        name: 'QuickMeds Express',
        address: '789 Elm Rd, Eastside, 10112',
        imageUrl: 'assets/images/pharmacy3.jpeg',
        phone: '+1 (555) 555-1212',
        deliveryStatus: 'Not available',
      ),
      const PharmacyEntity(
        name: 'HealthPlus Pharmacy',
        address: '123 Main Street, Downtown District, City Center, 12345',
        imageUrl: 'assets/images/pharmacy1.jpeg',
        phone: '+1 (555) 123-4567',
        deliveryStatus: 'Available',
      ),
      const PharmacyEntity(
        name: 'MediCare Central',
        address: '456 Oak Ave, Westside, 67890',
        imageUrl: 'assets/images/pharmacy2.jpeg',
        phone: '+1 (555) 987-6543',
        deliveryStatus: 'Available',
      ),
      const PharmacyEntity(
        name: 'QuickMeds Express',
        address: '789 Elm Rd, Eastside, 10112',
        imageUrl: 'assets/images/pharmacy3.jpeg',
        phone: '+1 (555) 555-1212',
        deliveryStatus: 'Not available',
      ),
      const PharmacyEntity(
        name: 'HealthPlus Pharmacy',
        address: '123 Main Street, Downtown District, City Center, 12345',
        imageUrl: 'assets/images/pharmacy1.jpeg',
        phone: '+1 (555) 123-4567',
        deliveryStatus: 'Available',
      ),
      const PharmacyEntity(
        name: 'MediCare Central',
        address: '456 Oak Ave, Westside, 67890',
        imageUrl: 'assets/images/pharmacy2.jpeg',
        phone: '+1 (555) 987-6543',
        deliveryStatus: 'Available',
      ),
      const PharmacyEntity(
        name: 'QuickMeds Express',
        address: '789 Elm Rd, Eastside, 10112',
        imageUrl: 'assets/images/pharmacy3.jpeg',
        phone: '+1 (555) 555-1212',
        deliveryStatus: 'Not available',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: pharmacies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final pharmacy = pharmacies[index];
          return PharmacyCard(
            pharmacy: pharmacy,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PharmacyDetailsView(pharmacy: pharmacy),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
