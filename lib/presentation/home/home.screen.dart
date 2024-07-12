import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sadiaassignmentproject/presentation/shared/widgets/app_button.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: AppButton(buttonName: "buttonName"),
      ),
    );
  }
}
