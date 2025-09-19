import 'package:flutter/material.dart';
import 'package:medcare/core/widgets/appbar_widget.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/doctor_card.dart';
import 'package:medcare/features/doctors/presentation/views/widgets/doctor_info_section.dart';

class DoctorDetailsViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               SizedBox(height: 15,),
              AppBarWidget(),

              SizedBox(height: 20),
              DoctorCard(),
              SizedBox(height: 10),

              DoctorInfoSection(),
            ],
          ),
        ),
      ),
    );
  }
}


