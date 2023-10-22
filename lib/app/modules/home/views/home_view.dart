import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: controller,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('HomeView'),
              centerTitle: true,
            ),
            body: Obx(
              () {
                if (controller.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Center(
                    child: ListView.builder(
                      itemCount: controller.list?.length ?? 0,
                      itemBuilder: (context, index) {
                        final product = controller.list![index];
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(product.imageLink ?? ''),
                          ),
                          title: Text(product.name ?? ""),
                          subtitle: Text(product.price ?? "0"),
                        );
                      },
                    ),
                  );
                }
              },
            ),
          );
        });
  }
}
