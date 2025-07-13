import 'package:flutter/material.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_texts.dart';
import 'blog_card.dart';


class BlogCardList extends StatelessWidget {
  const BlogCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: BlogCard(
            imageUrl: AppImages.heroMan,
            title: AppTexts.blogCardTitle,
            date: AppTexts.blogCardDate,
            description: AppTexts.blogCardDescription,
          ),
        );
      }),
    );
  }
}
