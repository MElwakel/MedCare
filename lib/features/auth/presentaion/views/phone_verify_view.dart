import 'package:flutter/material.dart';

class PhoneVerifyView extends StatelessWidget {
  const PhoneVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return PhoneVerifyViewBody();
  }
}

class PhoneVerifyViewBody extends StatelessWidget {
  const PhoneVerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                "Phone Address ",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "LibreBaskerville",
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Your identity helps you discover new people and opportunities",

                style: TextStyle(
                  textBaseline: TextBaseline.ideographic,
                  fontSize: 16,
                  fontFamily: "aago",
                  color: Colors.grey,
                ),
                textAlign: TextAlign.start,
              ),

              SizedBox(height: 100),

              TextField(
                keyboardType: TextInputType.phone, 
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  hintText: 'Enter your phone number',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ), 
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
