import 'package:get/get.dart';
import 'package:makeup_kit/app/data/ResponseProduct.dart';
import 'package:makeup_kit/app/modules/home/controllers/home_controller.dart';

class DetailsController extends GetxController {
  //TODO: Implement DetailsController

  // ResponseProduct product = ResponseProduct();
  ResponseProduct? product2;
  ResponseProduct? product3;

  @override
  void onInit() {
    super.onInit();

    //dependancy injection
    var homeCon = Get.find<HomeController>();
    product2 = homeCon.selectedProduct;
    print(homeCon.selectedProduct);

    product3 = Get.arguments['data'];
    print(product3);
    // getProductDetails();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

// Future<void> getProductDetails() async {
//   product = Get.find();
//   update();
// }
}
