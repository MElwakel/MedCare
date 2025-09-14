import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle, this.icon,  this.onTab,
  });

  final String title;
  final String subtitle;
  final IconData? icon;

  final VoidCallback? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(icon),
        ),

        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        iconColor: Colors.black,
        subtitle: Text(subtitle),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
    );
  }
}
