import 'package:medcare/features/hospital/domain/entities/hospital_entity.dart';

class HospitalModel extends HospitalEntity{
  HospitalModel({
    required super.name, 
    required super.address, 
    required super.imageUrl, 
    required super.rating, 
    required super.numberOfViews, 
    required super.specialties});

  factory HospitalModel.fromJson(Map<String, dynamic> json) {
    return HospitalModel(
      name: json['name'],
      address: json['address'],
      imageUrl: json['imageUrl'],
      rating: (json['rating'] as num).toDouble(),
      numberOfViews: json['numberOfViews'],
      specialties: List<String>.from(json['specialties']),
    );
  }
}