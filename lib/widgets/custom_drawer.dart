import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_images.dart';
import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primaryColor, AppColors.iconColor],
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(AppImages.heroMan),
            ),
            accountName: Text(
              'User name',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            accountEmail: Text(
              'user@example.com',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.whiteColor,
                fontSize: 16,
              ),
            ),
          ),

          CustomListTile(icon: Icons.home, title: 'Home'),
          CustomListTile(icon: Icons.work, title: 'Portfolio'),

          CustomListTile(icon: Icons.book, title: 'Blog'),
          CustomListTile(
            icon: Icons.settings_input_component_rounded,
            title: 'Services',
          ),
          CustomListTile(icon: Icons.info_rounded, title: 'About Us'),


          CustomListTile(title: 'Contact Us', icon: Icons.call),

          const Spacer(),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: Text(
              'Logout',
              style: Theme.of(
                context,
              ).textTheme.titleSmall?.copyWith(color: Colors.red),
            ),
            onTap: () {
              Navigator.pop(context);
              // Handle logout logic
            },
          ),
        ],
      ),
    );
  }
}
