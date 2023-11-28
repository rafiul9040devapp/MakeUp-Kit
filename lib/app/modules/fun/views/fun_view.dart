import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fun_controller.dart';

class FunView extends GetView<FunController> {
  const FunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FunView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FunView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
