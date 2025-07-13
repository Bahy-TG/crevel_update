import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/app_texts.dart';
import '../features/blog_screen/banner/banner_model.dart';
import '../features/blog_screen/banner/marketing_banner.dart';


class TopTips extends StatelessWidget {
  const TopTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppTexts.topTips, style: AppStyle.titleStyle),
        const SizedBox(height: 16),
        CustomMarketingBanner(
          model: BannerModel(
            title: AppTexts.bannerTitle,
            subtitle: AppTexts.bannerSubtitle,
            primaryText: AppTexts.bannerPrimaryButton,
            onPrimary: () {},
            secondaryText: AppTexts.bannerSecondaryButton,
            onSecondary: () {},
          ),
        ),
      ],
    );
  }
}
