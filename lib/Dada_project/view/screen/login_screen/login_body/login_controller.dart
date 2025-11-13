import 'package:dada_project/Dada_project/view/screen/login_screen/login_body/login_body.dart';
import 'package:dada_project/Dada_project/view/screen/login_screen/register_body/register_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxInt signIndex = 0.obs;
  RxBool visibility = false.obs;
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
}
