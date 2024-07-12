import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sadiaassignmentproject/infrastructure/utils/screen_extensions.dart';

import '../../../infrastructure/theme/app.colors.dart';
import '../../../infrastructure/theme/app.theme.dart';
import '../../../infrastructure/theme/assets/app.assets.dart';

class AvailableTimeline extends StatelessWidget {
  const AvailableTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircularPercentIndicator(
              radius: 65.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 10.0,
              percent: 0.2,
              center: Text(
                '৬ মাস ৬ দিন ',
                style: AppTheme.light.textTheme.bodyMedium?.copyWith(
                  color: AppColors.light.fonts,
                ),
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: AppColors.light.ternary,
              progressColor: AppColors.light.primary2,
            ),
            const SizedBox(height: 8.0),
            Text(
              'সময় অতিবাহিত',
              style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                color: AppColors.light.fonts,
              ),
            ),
          ],
        ),
        const SizedBox(width: 20.0),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'মেয়াদকাল',
                style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                  color: AppColors.light.fonts,
                ),
              ),
              const SizedBox(height: 4.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppAssets.light.icons.calenderIcon, height: 20),
                  const SizedBox(width: 4.0),
                  SizedBox(
                    width: context.screenWidth * 0.4,
                    child: Text(
                      '১ই জানুয়ারি ২০২৪ - ৩১ই জানুয়ারি ২০৩০',
                      style: AppTheme.light.textTheme.labelMedium?.copyWith(
                        color: AppColors.light.fonts,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Text(
                'আরও বাকি',
                style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                  color: AppColors.light.secondary,
                ),
              ),
              const SizedBox(height: 4.0),
              Row(
                children: [
                  _Countdown(numberOne: "০", numberTwo: "৫", text: "বছর"),
                  SizedBox(width: 10.0),
                  _Countdown(numberOne: "০", numberTwo: "৫", text: "মাস"),
                  SizedBox(width: 10.0),
                  Flexible(
                      child: _Countdown(
                          numberOne: "০", numberTwo: "৫", text: "দিন")),
                ],
              ),
              const SizedBox(height: 4.0),
            ],
          ),
        ),
      ],
    );
  }
}

class _Countdown extends StatelessWidget {
  final String numberOne;
  final String numberTwo;
  final String text;

  const _Countdown({
    super.key,
    required this.numberOne,
    required this.numberTwo,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: AppColors.light.primary4,
                border:
                    Border.all(color: AppColors.light.secondary, width: 1.5),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text(
                numberOne,
                style: AppTheme.light.textTheme.labelMedium?.copyWith(
                  color: AppColors.light.fonts,
                ),
              ),
            ),
            const SizedBox(width: 4.0),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: AppColors.light.primary4,
                border:
                    Border.all(color: AppColors.light.secondary, width: 1.5),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Text(
                numberTwo,
                style: AppTheme.light.textTheme.labelMedium?.copyWith(
                  color: AppColors.light.fonts,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: AppTheme.light.textTheme.labelMedium?.copyWith(
            color: AppColors.light.fonts,
          ),
        ),
      ],
    );
  }
}
