import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import './contact_detail_row_widget.dart';

class ContactInformationWidget extends StatelessWidget {
  final Future<void> Function(String) onLaunchUrl;

  const ContactInformationWidget({super.key, required this.onLaunchUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Reach Out to Us',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
            ),
          ),
          const SizedBox(height: 20),
          ContactDetailRowWidget(
            icon: Icons.email_outlined,
            title: 'Email Address',
            value: 'infoyourcompany.com', // TODO: Configurable
            onTap: () => onLaunchUrl('mailto:infoyourcompany.com'),
          ),
          ContactDetailRowWidget(
            icon: Icons.phone_outlined,
            title: 'Phone Number',
            value: '+20 100 123 4567', // TODO: Configurable
            onTap: () {
              final String whatsappNumber = '+201001234567'.replaceAll(' ', '');
              onLaunchUrl('https://wa.me/$whatsappNumber');
            },
          ),
          const SizedBox(height: 15),
          const Text(
            'Our Locations',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.whiteColor,
            ),
          ),
          ContactDetailRowWidget(
            icon: Icons.location_on_outlined,
            title: 'Cairo Office',
            value: 'Maadi, Cairo, Egypt',
            onTap: () => onLaunchUrl(
              'https://www.google.com/maps/search/?api=1&query=Maadi,Cairo,Egypt',
            ),
          ),
          ContactDetailRowWidget(
            icon: Icons.location_on_outlined,
            title: 'Giza Office',
            value: 'Smart Village, Giza, Egypt',
            onTap: () => onLaunchUrl(
              'https://www.google.com/maps/search/?api=1&query=Smart+Village,Giza,Egypt',
            ),
          ),
        ],
      ),
    );
  }
}
