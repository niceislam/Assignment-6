import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool visibility = false.obs;

  passTap() {
    visibility.value = !visibility.value;
  }
}
