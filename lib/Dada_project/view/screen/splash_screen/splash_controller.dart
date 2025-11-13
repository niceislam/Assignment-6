import 'package:dada_project/Dada_project/view/screen/login_screen/login_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  onchanged() async {
    await Future.delayed(Duration(seconds: 3));
    Get.off(() => LoginPage());
  }
}
