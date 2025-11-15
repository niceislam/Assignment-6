import 'package:dada_project/Dada_project/database/best_selling/best_selling.dart';
import 'package:dada_project/Dada_project/database/catagories/catagories_data.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/home_controller.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/Best_selling.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/Other_view.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/bottomNavBar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/carousel_image.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/rowCatagori.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/textfieldAndCatagory.dart';
import 'package:dada_project/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_appbar/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: Obx(() => controller.CustomAppbar[controller.bottomIndex.value]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: Colors.grey.shade100, thickness: 4),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Obx(
                    () =>
                        controller.bottomIndex == 0 ||
                            controller.bottomIndex == 1 ||
                            controller.bottomIndex == 2
                        ? TextfieldAndCatagory(hinText: "Search Product")
                        : SizedBox(),
                  ),
                  Obx(
                    () => controller.bottomPage[controller.bottomIndex.value],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Color(0xff757575), size: 26),
        ),
        child: Bottomnavbar(),
      ),
    );
  }
}
