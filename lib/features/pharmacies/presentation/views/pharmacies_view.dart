import 'package:flutter/material.dart';
import 'package:medcare/features/pharmacies/presentation/views/widgets/pharmacies_view_body.dart';
import '../../../../core/helpers/build_custom_app_bar.dart';

class PharmaciesView extends StatelessWidget {
  const PharmaciesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: 'pharmacies'),
      body: const PharmaciesViewBody(),
    );
  }


}
