import 'package:crevel_update/features/about_us_screen/view/about_us.dart';
import 'package:crevel_update/features/blog_screen/view/blog_screen.dart';
import 'package:crevel_update/features/contact_us_screen/view/contact_us.dart';
import 'package:crevel_update/features/portfolio_screen/view/protfilo_screen.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_images.dart';
import '../features/home_screen/view/home_screen.dart';
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

          CustomListTile(
            icon: Icons.home,
            title: 'Home',
            context: context,
            routeName: HomeScreen.routeName,
          ),
          CustomListTile(
            icon: Icons.work,
            title: 'Portfolio',
            context: context,
            routeName: PortfolioScreen.routeName,
          ),

          CustomListTile(
            icon: Icons.book,
            title: 'Blog',
            context: context,
            routeName: BlogScreen.routeName,
          ),
         
          CustomListTile(
            icon: Icons.info_rounded,
            title: 'About Us',
            context: context,
            routeName: AboutUsScreen.routeName,
          ),

          CustomListTile(
            title: 'Contact Us',
            icon: Icons.call,
            context: context,
            routeName: ContactUsScreen.routeName,
          ),

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
