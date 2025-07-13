import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import 'banner_content.dart';
import 'banner_model.dart';
class CustomMarketingBanner extends StatelessWidget {
  final BannerModel model;

  const CustomMarketingBanner({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(16),
        height: 250,
        decoration: BoxDecoration(
          color: model.backgroundImage !=null ? null : AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(.6),
                blurRadius: 10,
                spreadRadius:2,
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            if (model.backgroundImage !=null)
              Positioned.fill(
                child: Image.asset(model.backgroundImage!, fit: BoxFit.cover),
              ),
            Row(
              children: [
                Expanded(flex: 2, child: BannerContent(model: model)),
                if (model.sideImage !=null)
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: SizedBox(
                        height: double.infinity,
                        child: Image.asset(model.sideImage!, fit: BoxFit.fill),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
