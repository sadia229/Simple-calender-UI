import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sadiaassignmentproject/infrastructure/utils/screen_extensions.dart';

import '../../shared/widgets/card/search_card.dart';
import '../controllers/routine.controller.dart';

class CurrentDatesComponents extends GetView<RoutineController> {
  const CurrentDatesComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: context.screenHeight * 0.12,
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
        child: Obx(() {
          return ListView.builder(
            shrinkWrap: true,
            controller: controller.calendarScrollController,
            itemCount: controller.dateList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              String formattedDate =
                  DateFormat('dd', 'bn').format(controller.dateList[index]);
              bool isCurrentDate =
                  formattedDate == DateFormat('dd', 'bn').format(DateTime.now());
              String formattedDay = DateFormat('EEEE', 'bn')
                  .format(controller.dateList[index])
                  .split('বার')[0];
              return WeeklyCard(
                text: formattedDay.split('স্পতি')[0],
                date: formattedDate,
                isCurrentDate: isCurrentDate ? true : false,
              );
            },
          );
        }),
      ),
    );
  }
}
