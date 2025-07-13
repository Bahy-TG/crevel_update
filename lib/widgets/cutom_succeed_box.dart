
import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class CustomSucceedBox extends StatelessWidget {
  const CustomSucceedBox({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.32,
      width: MediaQuery.of(context).size.width * 0.70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColors.whiteColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
            maxLines: 1,
          ),
          const SizedBox(height: 15),
          Text(
            subTitle,
            style: const TextStyle(color: AppColors.whiteColor, fontSize: 20),
            textAlign: TextAlign.start,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
