import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsController>(
        init: controller,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('DetailsView'),
              centerTitle: true,
            ),
            body:  Center(
              child: Text(
                     controller.product2?.name ?? "",
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        });
  }
}
