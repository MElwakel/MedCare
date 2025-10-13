import 'package:flutter/material.dart';

class BookingItem extends StatelessWidget {
  final String imageUrl;
  final String doctorName;
  final String address;
  final String bookingDate;
  final String bookingTime;
  final String phone;

  const BookingItem({
    super.key,
    required this.imageUrl,
    required this.doctorName,
    required this.address,
    required this.bookingDate,
    required this.bookingTime,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withValues(alpha: 0.05),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(imageUrl),
          ),
          title: Text(
            doctorName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(address, maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: 4),
              Text('Date: $bookingDate'),
              Text('Time: $bookingTime'),
            ],
          ),
          isThreeLine: true,
          trailing: IconButton(
            icon: const Icon(Icons.phone, color: Colors.blue),
            onPressed: () {
              print('Calling $phone');
            },
          ),
        ),
      ),
    );
  }
}
