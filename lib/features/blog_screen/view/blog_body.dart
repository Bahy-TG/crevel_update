import 'package:flutter/material.dart';
import '../../../widgets/blog_card_list.dart';
import '../../../widgets/blog_header.dart';
import '../../../widgets/contact_us.dart';
import '../../../widgets/explore.dart';
import '../../../widgets/top_tips.dart';

class BlogBody extends StatelessWidget {
  const BlogBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlogHeader(),
            TopTips(),
            ExploreWidget(),
            BlogCardList(),
            ContactUsWidget(),
          ],
        ),
      ),
    );
  }
}
