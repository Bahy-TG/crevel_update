import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';


class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.function,
    required this.text,
    required this.textColor,
  });

  final Function function;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        function();
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        foregroundColor: AppColors.whiteColor,
        side: const BorderSide(color: AppColors.whiteColor),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: AppColors.whiteColor),
      ),
    );
  }
}
