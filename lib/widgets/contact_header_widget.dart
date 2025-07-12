import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class ContactHeaderWidget extends StatelessWidget {
  const ContactHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          height: 1.3,
        ),
        children: <TextSpan>[
          TextSpan(text: "Let's "),
          TextSpan(
            text: 'Talk Business. ',
            style: TextStyle(color: AppColors.lightPrimary),
          ),
          TextSpan(
            text: 'But YOU FIRST',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
