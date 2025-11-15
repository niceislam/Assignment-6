import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomnavbar extends StatelessWidget {
  Bottomnavbar({super.key});
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xffF08F3C).withAlpha(70),
        color: Color(0xffF08F3C).withAlpha(70),
        height: 72,
        items: [
          Icon(Icons.home_outlined),
          Icon(Icons.list),
          Icon(Icons.search_outlined),
          Icon(Icons.shopping_bag_outlined),
          Icon(Icons.bookmark_outline),
        ],
        index: controller.bottomIndex.value,
        onTap: (value) {
          controller.bottomOntap(bottomtap: value);
        },
      ),
    );
  }
}
