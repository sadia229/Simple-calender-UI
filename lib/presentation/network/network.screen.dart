import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/network.controller.dart';

class NetworkScreen extends GetView<NetworkController> {
  const NetworkScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NetworkScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NetworkScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
