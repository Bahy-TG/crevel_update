import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/app_texts.dart';

class BlogHeader extends StatelessWidget {
  const BlogHeader({super.key});
  static const colorizeColors = [
    Colors.tealAccent,
    Colors.purple,
    Colors.greenAccent,
    Colors.deepPurple,
    Colors.teal,
    Colors.white
  ];

  static const colorizeTextStyle = TextStyle(fontSize: 50.0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            ColorizeAnimatedText(
              AppTexts.blog,
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
        ),
        const SizedBox(height: 10),
        DefaultTextStyle(
          style: AppStyle.titleLarge.copyWith(fontSize: 14),
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(AppTexts.blogHeader),
              ],
              repeatForever: true,
            ),
          ),
        ),
      ],
    );
  }
}
