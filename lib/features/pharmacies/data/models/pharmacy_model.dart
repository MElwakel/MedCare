import '../../domain/entities/pharmacy_entity.dart';

class PharmacyModel extends PharmacyEntity {
  const PharmacyModel({
    required super.name,
    required super.address,
    required super.imageUrl,
  });

  factory PharmacyModel.fromJson(Map<String, dynamic> json) {
    return PharmacyModel(
      name: json['name'],
      address: json['address'],
      imageUrl: json['imageUrl'],
    );
  }
}
