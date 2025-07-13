import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';



//Services section
class CustomServicesBox extends StatelessWidget {
  const CustomServicesBox({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final IconData icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.27,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery
                .of(context)
                .size
                .width *1,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.20,
            decoration: BoxDecoration(
              border: BoxBorder.all(color: AppColors.whiteColor,),
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery
                        .of(context)
                        .size
                        .width * 0.13,
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  subTitle,
                  style: const TextStyle(
                      color: AppColors.whiteColor,  fontSize: 18),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,

                boxShadow: [
                  BoxShadow(
                    color: AppColors.whiteColor.withOpacity(0.6),
                    blurRadius: 20,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: AppColors.lightPrimary,
                radius: 48.0,
                child: Icon(icon, size: 50, color: AppColors.whiteColor,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
