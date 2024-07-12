import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/timeline.controller.dart';

class TimelineScreen extends GetView<TimelineController> {
  const TimelineScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimelineScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TimelineScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
