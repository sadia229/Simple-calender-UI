import 'package:flutter/material.dart';

import '../../../../infrastructure/theme/app.colors.dart';
import '../../../../infrastructure/theme/app.theme.dart';

class WeeklyCard extends StatelessWidget {
  final String text;
  final String date;
  final bool isCurrentDate;

  const WeeklyCard({
    super.key,
    required this.text,
    required this.date, required this.isCurrentDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [
            isCurrentDate == true?AppColors.light.primary:Colors.transparent,
            isCurrentDate == true?AppColors.light.primary2:Colors.transparent,
          ],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTheme.light.textTheme.bodyMedium?.copyWith(
                color: AppColors.light.primary5,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              date,
              style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                color: AppColors.light.fonts,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
