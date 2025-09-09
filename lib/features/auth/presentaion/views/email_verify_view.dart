import 'package:flutter/material.dart';

class EmailVerifyView extends StatelessWidget {
  const EmailVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailVerifyViewBody();
  }
}

class EmailVerifyViewBody extends StatelessWidget {
  const EmailVerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                "Email Address ",
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
                keyboardType:
                    TextInputType.emailAddress, 
                  decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email_outlined),
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
