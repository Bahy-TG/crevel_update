import 'package:animate_do/animate_do.dart';
import 'package:crevel_update/core/utils/app_colors.dart';
import 'package:crevel_update/core/utils/app_styles.dart';
import 'package:crevel_update/widgets/widgets_portfilo.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class PortfolioScreen extends StatelessWidget {
  static String routeName = '/profiler_screen';
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.tealAccent,
      Colors.purple,
      Colors.greenAccent,
      Colors.deepPurple,
      Colors.teal,
      Colors.white
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
    );
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: SizedBox(
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Portfolio',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),),
            SizedBox(height:10,),
            Center(child: SizedBox(
                width: 300,
                child: DefaultTextStyle(
                  style: AppStyle.titleLarge.copyWith(fontSize: 14),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magnam'),
                      TypewriterAnimatedText('commodi aperiam assumenda inventore quisquam. Culpa cum'),
                      TypewriterAnimatedText('aspernatur veniam quos quis ipsum. Commodi et sit ducimus, enim'),
                      TypewriterAnimatedText('ab fugit itaque magnam.'),
                    ],
                    repeatForever: true,
                  ),
                ),
              ),),
            SizedBox(height: 50,),
            SliderWithCurve(),
            SizedBox(height: 50,),
            Align(
                alignment: Alignment.centerLeft,
                  child: FadeInLeftBig(child: Text('Explore Social Media designs',style: AppStyle.titleLarge,))),
            SizedBox(height: 50,),
            SliderFirst(),
          ],
        ),
      ),
    );
  }
}
