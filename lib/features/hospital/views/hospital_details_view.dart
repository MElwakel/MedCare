import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class HospitalDetailsView extends StatelessWidget {
  const HospitalDetailsView({super.key});
  final List<String> specialities = const [
    "Oncology",
    "Radiology",
    "Surgery",
    "Pediatrics",
    "Pathology",
    "Pharmacy",
    "Nutrition",
    "Psychology",
  ];
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
                      backgroundImage: AssetImage('assets/images/57357.jpg'),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "57357 Hospital",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Sekat Hadid Al Mahger, Zeinhom, El Sayeda Zeinab, Cairo Governorate 4260102",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 4),
                        Text(
                          "4.5",
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        SizedBox(width: 50),
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black38,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "50000",
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
                        itemCount: specialities.length,
                        separatorBuilder: (context, index) => SizedBox(width: 12),
                        itemBuilder: (context, index) {
                          return Chip(
                            label: Text(
                              specialities[index],
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
