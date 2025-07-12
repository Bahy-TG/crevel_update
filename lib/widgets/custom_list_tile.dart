import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomListTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.lightPrimary),
      title: Text(title, style: Theme.of(context).textTheme.titleSmall),
      onTap: () {
        Navigator.pop(context);
        // Navigate to settings screen
      },
    );
  }
}
