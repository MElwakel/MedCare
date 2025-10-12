
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medcare/core/widgets/custom_button.dart';
import 'package:medcare/features/auth/presentaion/views/verify_your_code_view.dart';

class PhoneNumberVerifyViewBody extends StatelessWidget {
  const PhoneNumberVerifyViewBody({super.key});

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
              SizedBox(
                height: 16,
              ),
              CustomButton(text: "Verify your phone number",  onTap: () {
                context.go(VerifyYourCodeView.id);
              },)
            ],
          ),
        ),
      ),
    );
  }
}
