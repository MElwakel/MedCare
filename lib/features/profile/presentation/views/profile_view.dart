import 'package:flutter/material.dart';
import 'package:medcare/features/profile/presentation/views/widgets/profile_view_body.dart';

import '../../../home/presentation/widgets/button_navigation_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const String id = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileViewBody(),
      bottomNavigationBar: ButtonNavigationBar(selectedIndex: 3),
    );
  }
}
