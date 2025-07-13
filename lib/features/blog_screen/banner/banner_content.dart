import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import 'banner_model.dart';
import 'custom_banner_button.dart';
import 'custom_outlined_button.dart';

class BannerContent extends StatelessWidget {
  const BannerContent({super.key, required this.model});

  final BannerModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            model.subtitle,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              CustomOutlinedButton(
                function: model.onPrimary,
                text: model.primaryText,
                textColor: AppColors.whiteColor,
              ),
              const SizedBox(width: 30),
              CustomBannerButton(
                function: model.onSecondary,
                text: model.secondaryText,
                color: AppColors.iconColor,
                textColor: AppColors.whiteColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
