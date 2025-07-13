import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';


class CustomBannerButton extends StatelessWidget {
  const CustomBannerButton({
    super.key,
    required this.function,
    required this.text,
    required this.color,
    required this.textColor,
  });

  final Function function;
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(.6),
            blurRadius: 7,
            spreadRadius:2,
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
