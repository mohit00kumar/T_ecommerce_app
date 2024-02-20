import 'package:get/get.dart';

class HomeController extends GetxController {
  final carousalCurrentIndex = 0.obs;

  void updatePageController(index) {
    carousalCurrentIndex.value = index;
  }
}
