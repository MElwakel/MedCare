import 'package:flutter/material.dart';
import 'package:medcare/features/profile/presentation/views/widgets/profile_setting_item.dart';

class ProfileSettingsCard extends StatelessWidget {
  const ProfileSettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = [
      {'icon': Icons.lock_outline, 'title': 'Change Password', 'onTap': () {}},
      {
        'icon': Icons.edit_outlined,
        'title': 'Edit Information',
        'onTap': () {},
      },

      {
        'icon': Icons.brightness_6_outlined,
        'title': 'Light / Dark Mode',
        'onTap': () {},
      },
      {
        'icon': Icons.language_outlined,
        'title': 'Change Language',
        'onTap': () {},
      },
      {'icon': Icons.logout, 'title': 'Logout', 'onTap': () {}},
      {
        'icon': Icons.privacy_tip_outlined,
        'title': 'Privacy Settings',
        'onTap': () {},
      },
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.settings, color: Colors.teal),
              SizedBox(width: 8),
              Text(
                'Account Settings',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...settings.map((item) {
            return ProfileSettingItem(
              iconData: item['icon'] as IconData,
              title: item['title'] as String,
              onTap: item['onTap'] as void Function()?,
            );
          }),
        ],
      ),
    );
  }
}
