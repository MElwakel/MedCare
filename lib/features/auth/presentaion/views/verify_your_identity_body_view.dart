
import 'package:flutter/material.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/custom_list_tile.dart';
import 'package:medcare/features/auth/presentaion/views/widgets/lock_image_widget.dart';

class VerifyYourIdentityBody extends StatelessWidget {
  const VerifyYourIdentityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children:  [
              SizedBox(height: 30),
              LockImageWidget(
                icon: Icons.person_search_sharp,
              ),
              SizedBox(height: 50),
              Text(
                "Verify your identity",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "LibreBaskerville",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "your identity helps you discover new people and opportunities",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "aago",
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),

              CustomlistTile(
                title: 'Phone Number',
                subtitle: 'Verify with your Phone Number ',
                icon: Icons.phone,
              ),

               SizedBox(
                height: 24,
              ),

              CustomlistTile(
                title: 'Email',
                subtitle: 'Verify with your email',
                icon: Icons.email,
              ),


            ],
          ),
        ),
      ),
    );
  }
}

