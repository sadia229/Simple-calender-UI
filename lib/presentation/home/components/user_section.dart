import 'package:flutter/material.dart';

import '../../../infrastructure/theme/app.colors.dart';
import '../../../infrastructure/theme/app.theme.dart';
import '../../../infrastructure/theme/assets/app.assets.dart';

class UserSection extends StatelessWidget {
  const UserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 4,
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(AppAssets.light.icons.profile),
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'মোঃ মোহাইমেনুল রেজা',
                style: AppTheme.light.textTheme.titleSmall?.copyWith(
                  color: AppColors.light.fonts,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'সফটবিডি লিমিটেড',
                style: AppTheme.light.textTheme.bodyMedium?.copyWith(
                  color: AppColors.light.fonts,
                ),
              ),
              const SizedBox(height: 4.0),
              Row(
                children: [
                  Image.asset(AppAssets.light.icons.mapIcon, height: 20),
                  const SizedBox(width: 3.0),
                  Text(
                    'ঢাকা',
                    style: AppTheme.light.textTheme.bodyMedium?.copyWith(
                      color: AppColors.light.fonts,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
