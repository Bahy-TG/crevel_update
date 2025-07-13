import 'package:crevel_update/core/theme/app_theme_data.dart';
import 'package:crevel_update/features/about_us_screen/view/about_us.dart';
import 'package:crevel_update/features/contact_us_screen/view/contact_us.dart';
import 'package:crevel_update/features/home_screen/view/home_screen.dart';
import 'package:flutter/material.dart';

import 'features/blog_screen/view/blog_screen.dart';
import 'features/portfolio_screen/view/protfilo_screen.dart';
import 'features/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.myThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName : (context)=> HomeScreen(),
        PortfolioScreen.routeName : (context)=> PortfolioScreen(),
        AboutUsScreen.routeName : (context)=> AboutUsScreen(),
        ContactUsScreen.routeName : (context)=> ContactUsScreen(),
        BlogScreen.routeName : (context)=> BlogScreen(),
        SplashScreen.routeName : (context)=> SplashScreen(),
      },
    );
  }
}
