import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return
    //backgroundColor: const Color.fromARGB(255, 252, 252, 252),
    SizedBox(
      height: 240,
      width: 350,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(

                      image: AssetImage("assets/images/p3.jpg"),
                    ),
                  ),
                ),
                SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Dr. Matthew Burke',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Cardiology Specialist',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '1901 Thornridge Cir. Shiloh, Hawaii',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 150,
                child: Center(
                  child: Text(
                    "Book Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0F7885),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
