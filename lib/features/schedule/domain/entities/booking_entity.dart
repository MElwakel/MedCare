class BookingEntity {
  final String doctorName;
  final String address;
  final String imageUrl;
  final String bookingDate;
  final String bookingTime;
  final String? phone;

  const BookingEntity({
    required this.doctorName,
    required this.address,
    required this.imageUrl,
    required this.bookingDate,
    required this.bookingTime,
    this.phone,
  });
}
