import 'package:dada_project/Dada_project/view/screen/home_screen/app_appbar/bookmark_appbar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/app_appbar/cart_appbar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/app_appbar/catagory_appbar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/app_appbar/search_appbar.dart';
import 'package:flutter/cupertino.dart';
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
}
