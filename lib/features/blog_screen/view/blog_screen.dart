import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../widgets/custom_drawer.dart';
import 'blog_body.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});
  static String routeName = '/blog_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(),
      backgroundColor: AppColors.primaryColor,
      body: BlogBody(),
    );
  }
}
