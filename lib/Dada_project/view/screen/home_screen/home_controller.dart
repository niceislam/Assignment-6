import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndexCarousel = 0.obs;
  RxInt bottomIndex = 0.obs;

  bottomOntap({required int bottomtap}){
    bottomIndex.value = bottomtap;
  }
}
