import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class BlogCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String description;

  const BlogCard({
    required this.imageUrl,
    required this.title,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: AppStyle.titleStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    )),
                const SizedBox(height: 4),
                Text(date,
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.shade400)),
                const SizedBox(height: 6),
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyle.bodySmall.copyWith(color: Colors.white70),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}