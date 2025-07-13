import 'package:crevel_update/core/utils/app_texts.dart';
import 'package:crevel_update/widgets/custom_drawer.dart';
import 'package:crevel_update/widgets/custom_header.dart';
import 'package:crevel_update/widgets/custom_service_box.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.sectionHomeColor),
      drawer: CustomDrawer(),
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          CustomHeader(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'SERVICES',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 25),
                child: CustomServicesBox(
                  icon: Icons.settings_input_component_rounded,
                  title: AppTexts.serviceTitle,
                  subTitle: AppTexts.serviceTitle,
                ),
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
