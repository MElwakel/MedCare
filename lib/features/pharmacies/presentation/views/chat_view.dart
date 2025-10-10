import 'package:flutter/material.dart';
import 'package:medcare/features/pharmacies/presentation/views/widgets/chat_view_body.dart';
import '../../domain/entities/pharmacy_entity.dart';


class ChatView extends StatelessWidget {
  const ChatView({super.key, required this.pharmacy});
  final PharmacyEntity pharmacy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00796B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(pharmacy.imageUrl),
              radius: 20,
            ),
            const SizedBox(width: 10),
            Text(
              pharmacy.name,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: ChatViewBody(pharmacy: pharmacy),
    );
  }
}
