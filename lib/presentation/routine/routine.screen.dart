import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/app.colors.dart';
import '../../infrastructure/theme/app.theme.dart';
import '../shared/widgets/appbar/app-appbar.dart';
import '../shared/widgets/button/app_button.dart';
import '../shared/widgets/drawer/app_drawer.dart';
import 'components/all_programs.dart';
import 'components/current_dates_components.dart';
import 'controllers/routine.controller.dart';

class RoutineScreen extends GetView<RoutineController> {
  RoutineScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CustomAppbar(
        showCenterText: true,
        text: "সময়রেখা",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'আজ, ${DateFormat('d', 'bn').format(DateTime.now())} ${DateFormat('MMMM', 'bn').format(DateTime.now())}',
                    style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                      color: AppColors.light.fonts,
                    ),
                  ),
                  AppButton(
                    buttonName: "নতুন যোগ করুন",
                    onTap: () {
                      Get.toNamed(Routes.ADD_NEW_CATEGORY);
                    },
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            const CurrentDatesComponents(),
            const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
            const AllProgrammes(),
          ],
        ),
      ),
    );
  }
}
