import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/utils/app_texts.dart';
import 'package:curved_carousel/curved_carousel.dart';

class SliderCard extends StatelessWidget {
  final bool isLighted;
  final Color color1;
  const SliderCard({super.key,  this.isLighted=false, required this.color1});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [isLighted?BoxShadow(
              color: Colors.white.withOpacity(0.6),
              blurRadius: 20,
              spreadRadius: 2
          ):const BoxShadow(color: Colors.transparent)]
      ),
      child: Container(
        width: MediaQuery.of(context).size.width*0.25,
        height: MediaQuery.of(context).size.width*0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:color1,
        ),
        child: Center(child: Text(AppTexts.socialMediaDesign,style: AppStyle.cardStyle,textAlign: TextAlign.center,)),
      ),
    );
  }
}

class ProtfiloCard extends StatelessWidget {
  const ProtfiloCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.3,
      height: MediaQuery.of(context).size.width*0.2,
      decoration: BoxDecoration(
          color: HSLColor.fromColor(AppColors.backgroundColor)
              .withLightness((HSLColor.fromColor(AppColors.backgroundColor).lightness + 0.06).clamp(0.0, 1.0))
              .toColor(),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: HSLColor.fromColor(AppColors.backgroundColor)
                .withLightness((HSLColor.fromColor(AppColors.backgroundColor).lightness + 0.2).clamp(0.0, 0.5))
                .withSaturation((HSLColor.fromColor(AppColors.backgroundColor).saturation + 0.3).clamp(0.0, 1))
                .toColor(),
            width: 2,
          )
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
              child: Image(image: AssetImage(AppImages.heroMan),fit: BoxFit.cover,)),
          Expanded(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Expanded(child: Text(AppTexts.placeHolder,style: AppStyle.titleLarge,)),
                    const SizedBox(height: 5,),
                    Expanded(child: Text(AppTexts.placeHolder2,style: AppStyle.bodySmall,overflow:TextOverflow.ellipsis,maxLines: 3,)),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

class SliderFirst extends StatelessWidget {
  const SliderFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.32,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
      ),
      items: [1,2,3,4,5,6,7,8,9].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return const ProtfiloCard();
          },
        );
      }).toList(),
    );
  }
}

class SliderWithCurve extends StatefulWidget {
  const SliderWithCurve({super.key});

  @override
  State<SliderWithCurve> createState() => _SliderWithCurveState();
}

class _SliderWithCurveState extends State<SliderWithCurve> {
  final List<Color> sliderColors = [
    Colors.tealAccent,
    Colors.greenAccent,
    Colors.teal,
  ];
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CurvedCarousel(
      itemCount: 10,
      itemBuilder: (context, i) => SliderCard(
        color1: sliderColors[i % sliderColors.length],
        isLighted: i == _activeIndex,
      ),
      onChangeEnd: (index, isForward) {
        setState(() {
          _activeIndex = index;
        });
      },
      middleItemScaleRatio: 1.2,
      scaleMiddleItem: true,
      tiltItemWithcurve: true,
      viewPortSize: 0.32,
      horizontalPadding: 10,
      reverseAutomaticMovement: true,
    );
  }
}
