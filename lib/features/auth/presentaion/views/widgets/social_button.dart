import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.iconData,
    required this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: FaIcon(iconData, color: color),
      label: Text(text),
    );
  }
}
