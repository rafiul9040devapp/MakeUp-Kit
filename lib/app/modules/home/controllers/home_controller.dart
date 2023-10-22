import 'package:get/get.dart';
import 'package:makeup_kit/app/data/ResponseProduct.dart';
import 'package:makeup_kit/app/network/api_service.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  List<ResponseProduct>? list = [];
  ResponseProduct? selectedProduct;

  @override
  void onInit() {
    super.onInit();
    print("object");
    getData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> getData() async {
    print("getDATA called");
    try {
      isLoading(true);
      ApiService apiService = ApiService();
      list = await apiService.fetchProducts();
      update();
    }finally{
     isLoading(false);
    }
    // catch (e) {
    // print(e.toString());
    //  }
  }
}
