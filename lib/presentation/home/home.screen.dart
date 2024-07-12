import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sadiaassignmentproject/infrastructure/utils/screen_extensions.dart';

import '../../domain/static/app_static.dart';
import '../../infrastructure/theme/app.colors.dart';
import '../../infrastructure/theme/app.theme.dart';
import '../shared/widgets/appbar/app-appbar.dart';
import '../shared/widgets/drawer/app_drawer.dart';
import 'components/available_timeline.dart';
import 'components/user_section.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomAppbar(
        onClicked: () {
          _scaffoldKey.currentState?.openDrawer();
          debugPrint('drawer opened');
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  UserSection(),
                  SizedBox(height: 20.0),
                  AvailableTimeline(),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 2.1 / 2.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.light.primary4,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Image.asset(gridImageSet[index], height: 40),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'মেনু নং',
                        style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                          color: AppColors.light.fonts,
                        ),
                      ),
                      Text(
                        '০০০০২',
                        style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                          color: AppColors.light.fonts,
                        ),
                      ),
                    ],
                  );
                },
                childCount: gridImageSet.length,
              ),
            ),
            SliverToBoxAdapter(
                child: SizedBox(height: context.screenHeight * 0.18)),
          ],
        ),
      ),
    );
  }
}
