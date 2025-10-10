import 'package:flutter/material.dart';
import 'package:medcare/features/pharmacies/domain/entities/pharmacy_entity.dart';
import 'build_pharmacy_info_card.dart';

class PharmacyDetailsViewBody extends StatelessWidget {
  const PharmacyDetailsViewBody({super.key, required this.pharmacy});
  final PharmacyEntity pharmacy;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              child: Image.asset(
                pharmacy.imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                errorBuilder:
                    (context, error, stackTrace) => Container(
                      height: 250,
                      color: Colors.grey[300],
                      child: const Center(
                        child: Icon(
                          Icons.broken_image,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildPharmacyInfoCard(
                  context,
                  title: 'Address',
                  content: pharmacy.address,
                  icon: Icons.location_on_outlined,
                ),
                const SizedBox(height: 16.0),
                buildPharmacyInfoCard(
                  context,
                  title: 'Phone',
                  content: pharmacy.phone ?? 'N/A',
                  icon: Icons.phone,
                ),
                const SizedBox(height: 16.0),
                buildPharmacyInfoCard(
                  context,
                  title: 'Delivery',
                  content: pharmacy.deliveryStatus ?? 'Not available',
                  icon: Icons.delivery_dining,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
