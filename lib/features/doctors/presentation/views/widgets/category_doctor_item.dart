import 'package:flutter/material.dart';

import 'five_star_rating.dart';

class CategoryDoctorItem extends StatefulWidget {
  const CategoryDoctorItem({super.key});

  @override
  State<CategoryDoctorItem> createState() => _CategoryDoctorItemState();
}

class _CategoryDoctorItemState extends State<CategoryDoctorItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        //margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.07),
              blurRadius: 6,
              spreadRadius: 1,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11.0),
              child: Row(
                children: [
                  ClipRRect(
                    child: SizedBox(
                      height: 117,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child: AspectRatio(
                          aspectRatio: 100 / 105,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              fit: BoxFit.fill,
                              "assets/images/doctor_image_test.jpeg",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Omar Eldidi",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'LibreBaskerville',
                        ),
                      ),
                      Text(
                        "Dentist",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: 'aago',
                        ),
                      ),
                      SizedBox(height: 12),
                      FiveStarRating(),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    isFavorite = !isFavorite;
                    setState(() {});
                  },
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
                    color: isFavorite ? Colors.red : Colors.grey,
                    size: 28,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0, right: 11),
                  child: Text(
                    "(2222 views)",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'aago',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
