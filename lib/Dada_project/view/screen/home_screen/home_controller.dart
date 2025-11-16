import 'dart:developer';

import 'package:dada_project/Dada_project/secure_storage/secure_storage.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/app_appbar/bookmark_appbar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/app_appbar/cart_appbar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/app_appbar/catagory_appbar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/app_appbar/search_appbar.dart';
import 'package:dada_project/Dada_project/view/screen/login_screen/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'app_appbar/home_appbar.dart';
import 'app_body/bottom_bookmark.dart';
import 'app_body/bottom_cart/bottom_cart.dart';
import 'app_body/bottom_catagory.dart';
import 'app_body/bottom_home.dart';
import 'app_body/bottom_search.dart';

class HomeController extends GetxController {
  RxInt currentIndexCarousel = 0.obs;
  RxInt bottomIndex = 0.obs;
  List bottomPage = [
    BottomHome(),
    BottomCatagory(),
    BottomSearch(),
    BottomCart(),
    BottomBookmark(),
  ];

  List CustomAppbar = [
    HomeAppbar(),
    CatagoryAppbar(),
    SearchAppbar(),
    CartAppbar(),
    BookmarkAppbar(),
  ];

  bottomOntap({required int bottomtap}) {
    bottomIndex.value = bottomtap;
  }

  showdialogueRegister() async {
    await Future.delayed(Duration(seconds: 3));
    var a = await LocalStorage().readData(key: "login");
    log("=========");
    if (a == null) {
      await Get.dialog(
        AlertDialog(
          shape: RoundedRectangleBorder(),
          content: Column(
            spacing: 15,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.close, color: Colors.grey),
                  ),
                ],
              ),
              Icon(Icons.login_outlined, color: Colors.blue, size: 50),
              Text(
                textAlign: TextAlign.center,
                "Welcome\nTo my E-Commerce App",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              InkWell(
                onTap: () async {
                  await EasyLoading.show();
                  await Future.delayed(Duration(seconds: 1));
                  Get.off(() => LoginPage());
                  EasyLoading.dismiss();
                },
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withAlpha(100),
                  ),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  void onInit() {
    showdialogueRegister();
    super.onInit();
  }
}
