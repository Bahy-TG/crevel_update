import 'package:crevel_update/widgets/custom_drawer.dart';
import 'package:crevel_update/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: CustomDrawer(),
        backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          CustomHeader(),
        ],
      ),

    );
  }
}
