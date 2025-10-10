class PharmacyEntity {
  final String name;
  final String address;
  final String imageUrl;
  final String? phone;
  final String? deliveryStatus;

  const PharmacyEntity({
    required this.name,
    required this.address,
    required this.imageUrl,
    this.phone,
    this.deliveryStatus,
  });
}
