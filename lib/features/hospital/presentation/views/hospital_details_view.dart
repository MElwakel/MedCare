import 'package:flutter/material.dart';
import 'package:medcare/core/helpers/build_custom_app_bar.dart';
import 'package:medcare/features/hospital/domain/entities/hospital_entity.dart';
import 'package:medcare/features/hospital/presentation/views/widgets/hospital_details_view_body.dart';


class HospitalDetailsView extends StatelessWidget {
  const HospitalDetailsView({super.key, required this.hospital,});
  final HospitalEntity hospital;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'Hospital Details'),

      body: HospitalDetailsViewBody(hospital: hospital),

    );
  }
}
