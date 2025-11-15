import 'package:get/get.dart';

class BottomCartController extends GetxController {
  RxInt quantity = 1.obs;
  RxBool deleteCart = false.obs;

  increamentButton() {
    if (quantity <= 9) {
      quantity++;
    }
  }

  dicreamentButton() {
    if (quantity >= 2) {
      quantity--;
    }
  }

  onlongpressToDelete() {
    deleteCart.value = true;
  }
}
