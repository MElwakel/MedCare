import 'package:flutter/material.dart';

class PopularDoctorItem extends StatelessWidget {
  const PopularDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        color: Colors.white,
        elevation: 1.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: SizedBox(
          width: 200,
          height: 300,
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    ),
                    child: Image.asset(
                      fit: BoxFit.fill,
                      "assets/images/doctor_image_test.jpeg",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Dr. Omar Eldidi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LibreBaskerville',
                ),
              ),
              Text(
                "Consultant of Dentistry",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontFamily: 'aago',
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star_rounded, color: Colors.yellow[700]),
                    SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: 'aago',
                        ),
                      ),
                    ),

                    Spacer(),
                    Icon(Icons.attach_money_rounded, color: Colors.black),
                    SizedBox(width: 2),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "250",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: 'aago',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
