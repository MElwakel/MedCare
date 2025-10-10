import 'package:flutter/material.dart';
import 'package:medcare/core/helpers/build_custom_app_bar.dart';
import 'package:medcare/features/pharmacies/domain/entities/pharmacy_entity.dart';
import 'package:medcare/features/pharmacies/presentation/views/chat_view.dart';
import 'package:medcare/features/pharmacies/presentation/views/widgets/pharmacies_details_view_body.dart';

class PharmacyDetailsView extends StatelessWidget {
  const PharmacyDetailsView({super.key, required this.pharmacy});
  final PharmacyEntity pharmacy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'Pharmacy Details'),

      body: PharmacyDetailsViewBody(pharmacy: pharmacy),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatView(pharmacy: pharmacy),
            ),
          );
        },
        backgroundColor: const Color(0xFF00796B),
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}
