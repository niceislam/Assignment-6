import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool visibility = false.obs;
  final mykey = GlobalKey<FormState>();
  List Info = [];
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  register() async {
    if (mykey.currentState!.validate()) {
      await EasyLoading.show();
      await Future.delayed(Duration(seconds: 2));
      Map<String, dynamic> userData = {
        "name": "${namecontroller.text}",
        "phone": phonecontroller.text,
        "password": "${passcontroller.text}",
      };

      Info.add(userData);
      log("==========${Info}");
      await EasyLoading.showSuccess("Register success");
      namecontroller.clear();
      passcontroller.clear();
      phonecontroller.clear();
    }
  }

  passTap() {
    visibility.value = !visibility.value;
  }
}
