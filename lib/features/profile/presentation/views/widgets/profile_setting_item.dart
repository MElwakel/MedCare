import 'package:flutter/material.dart';

class ProfileSettingItem extends StatelessWidget {
  const ProfileSettingItem({
    super.key,
    this.onTap,
    required this.iconData,
    required this.title,
  });

  final void Function()? onTap;
  final IconData iconData;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.teal.withValues(alpha: 0.4),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Icon(iconData, color: Colors.teal),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
