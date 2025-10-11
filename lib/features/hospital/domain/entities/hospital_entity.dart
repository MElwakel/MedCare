class HospitalEntity {
  final String name;
  final String address;
  final String imageUrl;
  final double rating;
  final int numberOfViews;
  final List<String> specialties;

  HospitalEntity({
    required this.name,
    required this.address,
    required this.imageUrl,
    required this.rating,
    required this.numberOfViews,
    required this.specialties,
  });
}
