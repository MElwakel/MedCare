import 'package:flutter/material.dart';
import 'package:medcare/features/hospital/domain/entities/hospital_entity.dart';
import 'package:readmore/readmore.dart';

class HospitalDetailsViewBody extends StatelessWidget {
  const HospitalDetailsViewBody({super.key, required this.hospital});
  final HospitalEntity hospital;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(hospital.imageUrl),
                    ),
                    SizedBox(height: 24),
                    Text(
                      hospital.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      hospital.address,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 4),
                        Text(
                          hospital.rating.toString(),
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        SizedBox(width: 50),
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black38,
                        ),
                        SizedBox(width: 4),
                        Text(
                          hospital.numberOfViews.toString(),
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 12),
                    ReadMoreText(
                      "The 57357 Hospital is a leading pediatric oncology center located in Cairo, Egypt. Established in 2007, it is dedicated to providing comprehensive care for children with cancer. The hospital is renowned for its state-of-the-art facilities, advanced treatment protocols, and a multidisciplinary team of specialists committed to delivering the highest standard of care. The 57357 Hospital also focuses on research and education, aiming to improve outcomes for pediatric cancer patients both locally and globally. With a patient-centered approach, the hospital offers a supportive environment for children and their families throughout their treatment journey.",
                      trimLines: 3,
                      trimMode: TrimMode.Line,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                      moreStyle: TextStyle(color: Colors.blue),
                      lessStyle: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      height: 40,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: hospital.specialties.length,
                        separatorBuilder: (context, index) => SizedBox(width: 12),
                        itemBuilder: (context, index) {
                          return Chip(
                            label: Text(
                              hospital.specialties[index],
                              style: TextStyle(fontSize: 15),
                            ),
                            backgroundColor: Colors.blue.shade50,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
