import 'package:flutter/material.dart';
import 'package:medcare/features/schedule/presentation/views/widgets/booking_item.dart';

class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return BookingItem(
          doctorName: 'Dr. John Smith',
          address: '123 Main Street, Downtown District, City Center, 12345',
          imageUrl: 'assets/images/p3.jpg',
          bookingDate: '2024-06-15',
          bookingTime: '10:00 AM',
          phone: '+1 (555) 123-4567',
        );
      },
    );
  }
}
