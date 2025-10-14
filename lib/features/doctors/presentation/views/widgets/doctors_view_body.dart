import 'package:flutter/material.dart';
import 'package:medcare/features/doctors/domain/entity/doctor_entity.dart';
import 'package:medcare/features/doctors/presentation/views/doctor_details_view.dart';

import 'package:medcare/features/doctors/presentation/views/widgets/doctor_card_body.dart';


class DoctorsViewBody extends StatelessWidget {
  const DoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    final doctors = [
  const DoctorEntity(
    impath: "assets/images/osama mohamed.jpg",
    name_doctor: "Dr. osama mohamed",
    specialty: "Dentist",
    Rate: "4.8",
    price: "EGY 250",
  ),
  const DoctorEntity(
    impath: "assets/images/p3.jpg",
    name_doctor: "Dr. Sarah Ali",
    specialty: "Cardiologist",
    Rate: "4.6",
    price: "EGY 300",
  ),
  const DoctorEntity(
    impath: "assets/images/doctor_image_test.jpeg",
    name_doctor: "Dr. Ahmed Mostafa",
    specialty: "Neurologist",
    Rate: "4.9",
    price: "EGY 350",
  ),
  const DoctorEntity(
    impath: "assets/images/doctor_image_test.jpeg",
    name_doctor: "Dr. Rania Hussein",
    specialty: "Dermatologist",
    Rate: "4.7",
    price: "EGY 200",
  ),
  const DoctorEntity(
    impath: "assets/images/doctor_image_test.jpeg",
    name_doctor: "Dr. Mahmoud Youssef",
    specialty: "Orthopedic Surgeon",
    Rate: "4.5",
    price: "EGY 400",
  ),
  const DoctorEntity(
    impath: "assets/images/doctor_image_test.jpeg",
    name_doctor: "Dr. Mona Khaled",
    specialty: "Pediatrician",
    Rate: "4.9",
    price: "EGY 270",
  ),
  const DoctorEntity(
    impath: "assets/images/doctor_image_test.jpeg",
    name_doctor: "Dr. Islam Elsharkawy",
    specialty: "Psychiatrist",
    Rate: "4.8",
    price: "EGY 320",
  ),
  const DoctorEntity(
    impath: "assets/images/doctor_image_test.jpeg",
    name_doctor: "Dr. Hala Samir",
    specialty: "Ophthalmologist",
    Rate: "4.7",
    price: "EGY 280",
  ),
  const DoctorEntity(
    impath: "assets/images/doctor_image_test.jpeg",
    name_doctor: "Dr. Karim Tarek",
    specialty: "ENT Specialist",
    Rate: "4.6",
    price: "EGY 230",
  ),
];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
  itemCount: doctors.length,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 0.6,
  ),
  itemBuilder: (context, index) {
    final doctor = doctors[index];
    return DoctorCard(
      impath: doctor.impath,
      name_doctor: doctor.name_doctor,
      specialty: doctor.specialty,
      rate: doctor.Rate,
      price: doctor.price,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorDetials(),
          ),
        );
      },
    );
  },
),

    );
    
  }
}

