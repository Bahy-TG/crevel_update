import 'dart:ui' as ui;
import '../../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  static String routeName = '/about_screen';
  final String aboutUsText = """
We are a team of passionate individuals dedicated to delivering exceptional services and solutions.

Our mission is to empower businesses and individuals through innovative strategies and creative designs.

With a focus on quality and customer satisfaction, we strive to exceed expectations in every project we undertake.

Join us on our journey to make a positive impact in the digital world.
""";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final bool isWideScreen = screenSize.width > 700;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor:AppColors.whiteColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            isWideScreen ? screenSize.width * 0.15 : 24.0,
            screenSize.height * 0.15,
            isWideScreen ? screenSize.width * 0.15 : 24.0,
            24.0,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: isWideScreen ? 650 : 500),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 30.0,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.whiteColor.withOpacity(0.3),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Discover Our Story',
                    style: TextStyle(
                      fontSize: isWideScreen ? 30 : 26,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                      height: 1.3,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: AppColors.blackColor.withOpacity(0.5),
                          offset: const Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 3,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColors.lightPrimary.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    aboutUsText,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: isWideScreen ? 17 : 15,
                      height: 1.75,
                      color: AppColors.whiteColor.withOpacity(0.9),
                      shadows: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: AppColors.whiteColor.withOpacity(0.5),
                          offset: const Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
