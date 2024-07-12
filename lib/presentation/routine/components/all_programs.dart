import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sadiaassignmentproject/infrastructure/utils/screen_extensions.dart';

import '../../../infrastructure/theme/app.colors.dart';
import '../../../infrastructure/theme/app.theme.dart';
import '../../../infrastructure/theme/assets/app.assets.dart';
import '../controllers/routine.controller.dart';

class AllProgrammes extends GetView<RoutineController> {
  const AllProgrammes({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'আজকের কার্যক্রম',
                  style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                    color: AppColors.light.fonts,
                  ),
                ),
                const SizedBox(height: 20.0),
                Obx(() {
                  return controller.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : controller.articles.value.isEmpty
                          ? Center(child: Text(controller.error.value))
                          : controller.articles.value.isEmpty
                              ? const Center(child: Text("No data found"))
                              : ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: controller.articles.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    final article = controller.articles[index];
                                    return Row(
                                      children: [
                                        Text(
                                          'সকাল\n১১:০০ মি.',
                                          textAlign: TextAlign.center,
                                          style: AppTheme
                                              .light.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: index % 2 == 0
                                                ? AppColors.light.fonts
                                                : AppColors.light.secondary2,
                                          ),
                                        ),
                                        const SizedBox(width: 12.0),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          margin:
                                              const EdgeInsets.only(bottom: 16),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            gradient: LinearGradient(colors: [
                                              index % 2 == 0
                                                  ? AppColors.light.primary
                                                  : AppColors.light.fonts,
                                              index % 2 == 0
                                                  ? AppColors.light.primary2
                                                  : AppColors.light.fonts,
                                            ]),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Icon(
                                                      CupertinoIcons.clock,
                                                      color: Colors.white,
                                                      size: 16),
                                                  const SizedBox(width: 4.0),
                                                  Text(
                                                    '১১:০০ মি.',
                                                    textAlign: TextAlign.center,
                                                    style: AppTheme.light
                                                        .textTheme.labelMedium
                                                        ?.copyWith(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8.0),
                                              SizedBox(
                                                width: Get.width * 0.58,
                                                child: Text(
                                                  article.name,
                                                  textAlign: TextAlign.start,
                                                  style: AppTheme
                                                      .light.textTheme.bodySmall
                                                      ?.copyWith(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 8.0),
                                              Text(
                                                article.category,
                                                textAlign: TextAlign.center,
                                                style: AppTheme
                                                    .light.textTheme.labelMedium
                                                    ?.copyWith(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(height: 8.0),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    AppAssets
                                                        .light.icons.mapIcon,
                                                    height: 16,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(width: 4.0),
                                                  Text(
                                                    article.location,
                                                    textAlign: TextAlign.center,
                                                    style: AppTheme.light
                                                        .textTheme.labelMedium
                                                        ?.copyWith(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                }),
                SizedBox(height: context.screenHeight * 0.15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
