import 'package:crevel_update/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/utils/app_colors.dart';
import 'custom_social_icon.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.sectionHomeColor,
      child: Column(
        children: [
          Container(
           padding: EdgeInsets.only(left: 16,top: 16),
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // LEFT: Texts and icons
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Crevel',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.lightPrimary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Discover top Discover top notch .',
                        maxLines: 2,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color:AppColors.whiteColor,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          CustomIconButton(icon: Icons.facebook),
                          SizedBox(width: 5),
                          CustomIconButton(icon: Icons.facebook),
                          SizedBox(width: 5),
                          CustomIconButton(icon: Icons.email),
                          SizedBox(width: 5),
                          CustomIconButton(icon: Icons.not_listed_location_outlined),
                        ],
                      ),
                    ],
                  ),
                ),

                // RIGHT: Hero image
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/images/heroMan.png'),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/header_bottom.png')
        ],
      ),
    );
  }
}
