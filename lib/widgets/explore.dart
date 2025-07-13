
import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/app_texts.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(AppTexts.exploreBlog, style: AppStyle.titleStyle),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(AppTexts.exploreSubtitle, style: AppStyle.bodyLarge),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
