import 'package:dada_project/Dada_project/view/screen/home_screen/home_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  onchanged() async {
    await Future.delayed(Duration(seconds: 3));
    Get.off(() => HomeScreen());
  }
}
