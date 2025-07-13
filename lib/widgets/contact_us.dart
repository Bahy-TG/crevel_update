import 'package:crevel_update/features/contact_us_screen/view/contact_us.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),

        Text(
          'CONTACT US',
          style: AppStyle.titleStyle.copyWith(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'Let\'s Start Something Great Together',
          style: AppStyle.bodyLarge.copyWith(
            color: Colors.white70,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, ContactUsScreen.routeName);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 5,
          ),
          child: Text(
            'Let\'s Talk',
            style: AppStyle.titleStyle.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}
