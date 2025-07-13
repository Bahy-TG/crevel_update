import 'package:crevel_update/core/utils/app_colors.dart';
import 'package:crevel_update/features/home_screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../blog_screen/view/blog_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCubic,
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF003049),
              AppColors.iconColor,
              AppColors.primaryColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ScaleTransition(
            scale: _animation,
            child: FadeTransition(
              opacity: _animation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),

                  Text(
                    'Empowering Your Digital Journey',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
