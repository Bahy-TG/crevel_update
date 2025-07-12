import 'package:crevel_update/core/theme/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'features/home_screen/view/home_screen.dart';

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
      home: HomeScreen(),
    );
  }
}
