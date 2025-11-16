import 'dart:math';

import 'package:dada_project/Dada_project/secure_storage/secure_storage.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/home_screen.dart';
import 'package:dada_project/Dada_project/view/screen/login_screen/login_body/login_body.dart';
import 'package:dada_project/Dada_project/view/screen/login_screen/register_body/register_body.dart';
import 'package:dada_project/Dada_project/view/screen/login_screen/register_body/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RegisterController regcontroller = Get.put(RegisterController());
  final mykey = GlobalKey<FormState>();
  RxInt signIndex = 1.obs;
  RxBool visibility = false.obs;
  TextEditingController loginPhonecontroller = TextEditingController();
  TextEditingController loginPasswordcontroller = TextEditingController();
  RxList newUserPage = [LoginBody(), RegisterPage()].obs;

  signInTap() {
    signIndex.value = 0;
  }

  signUpTap() {
    signIndex.value = 1;
  }

  visibilityButton() {
    visibility.value = !visibility.value;
  }

  loginTap() async {
    if (mykey.currentState!.validate()) {
      await EasyLoading.show();
      await Future.delayed(Duration(seconds: 2));
      if (loginPhonecontroller.text == regcontroller.Info[0]['phone'] &&
          loginPasswordcontroller.text == regcontroller.Info[0]['password']) {
        Get.snackbar(
          "Massage",
          "Login Success",
          backgroundColor: Color(0xffF4A758),
        );
        Get.off(() => HomeScreen());
        await EasyLoading.showSuccess("Login Success");
        loginPhonecontroller.clear();
        loginPasswordcontroller.clear();
      } else {
        Get.snackbar(
          "Massage",
          "Wrong User",
          backgroundColor: Colors.red.withAlpha(50),
        );
        EasyLoading.dismiss();
      }
    }
  }
}
