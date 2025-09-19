import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class DoctorInfoSection extends StatelessWidget {
  
String text =
      "Dr. Matthew Burke is the leading cardiologist at Nanyang Hospital. He has received numerous awards for his outstanding contributions to the medical field. He offers private consultations and has over 20 years of experience in diagnosing and treating complex heart conditions. Dr. Burke is known for his compassionate approach to patients and his meticulous attention to detail, ensuring the highest standard of care. He is currently developing innovative programs for heart disease prevention and is considered a leading medical authority in the region.";

 
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20.0, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('About Doctor', style: TextStyle(fontSize: 25)),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ReadMoreText(
                  text,
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  style: TextStyle(fontSize: 16,color: Colors.grey),
                  moreStyle: TextStyle(color: Colors.blue),
                  lessStyle: TextStyle(color: Colors.blue),
                  
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 20.0, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Working Time', style: TextStyle(fontSize: 25)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Sat-Thu, 11:00 AM - 7:00 PM',
                  style: TextStyle(fontSize: 20,color: Colors.grey),),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only( left: 20.0, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Location', style: TextStyle(fontSize: 25)),
                ),
              ),

              Container(
                  height: 250,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage("assets/images/location.jpg"),
                    ),
                  ),
                ),
             
              
      ],
    );}}