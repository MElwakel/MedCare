import 'package:flutter/material.dart';

class Home_visit_elements extends StatelessWidget {
  String impath;
  String name_service;
  String Service_description;
  Home_visit_elements({
    super.key,
    required this.Service_description,
    required this.impath,
    required this.name_service,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
      ),
      color: const Color.fromARGB(255, 243, 244, 255),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15),
              child: Image.asset(
                impath,
                height: 200,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name_service,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    Service_description,
                    //textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.2,
                      color: Color.fromARGB(221, 137, 133, 133),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
