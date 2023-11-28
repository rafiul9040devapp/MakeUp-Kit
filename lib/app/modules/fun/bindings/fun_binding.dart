import 'package:get/get.dart';

import '../controllers/fun_controller.dart';

class FunBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FunController>(
      () => FunController(),
    );
  }
}
