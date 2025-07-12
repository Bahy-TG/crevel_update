import 'package:flutter/material.dart';

class CustomSocialIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final double size;
  final VoidCallback? onTap;

  const CustomSocialIcon({
    super.key,
    required this.icon,
    this.color = Colors.white,
    this.size = 24,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Icon(icon, color: color, size: size),
        );
    }
}