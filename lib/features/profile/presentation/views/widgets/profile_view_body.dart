import 'package:flutter/material.dart';
import 'package:medcare/features/profile/presentation/views/widgets/profile_card_info.dart';
import 'package:medcare/features/profile/presentation/views/widgets/profile_header.dart';
import 'package:medcare/features/profile/presentation/views/widgets/profile_settings_card.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeader(),
            const SizedBox(height: 16),
            const ProfileInfoCard(),
            const SizedBox(height: 16),
            const ProfileSettingsCard(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
