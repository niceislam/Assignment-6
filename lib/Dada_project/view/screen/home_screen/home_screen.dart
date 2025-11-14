import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dada_project/Dada_project/database/best_selling/best_selling.dart';
import 'package:dada_project/Dada_project/database/catagories/catagories_data.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/home_controller.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/Best_selling.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/Other_view.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/bottomNavBar.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/carousel_image.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/rowCatagori.dart';
import 'package:dada_project/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              height: 35,
              width: 35,
              "assets/iconImage/Menu.png",
            ),
          ),
        ),
        centerTitle: true,
        title: Image.asset(width: 133, height: 40, "assets/image/dada.png"),
        actions: [Icon(Icons.person, size: 35), SizedBox(width: 10)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: Colors.grey.shade100, thickness: 4),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
              child: Column(
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: CustomTextField(
                          hintText: "Search Products",
                          preIcon: Icon(
                            Icons.search_outlined,
                            color: Color(0xffB3B3B3),
                            size: 25,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          borderSide: BorderSide.none,
                          focusedBorder: BorderSide.none,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF4A758),
                          ),
                          child: Center(
                            child: Image.asset(
                              color: Color(0xff515050),
                              height: 22,
                              width: 22,
                              "assets/iconImage/Setting.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  CarouselWidget(),
                  SizedBox(height: 15),

                  // Categories
                  RowCatagori(title: "Categories"),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 109,
                    child: ListView.builder(
                      itemCount: CatagoriesData().Data.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = CatagoriesData().Data[index];
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          height: 109,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage("${item}"),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 30),

                  // Best Selling
                  RowCatagori(
                    title: "Best Selling",
                    buttonTitle: "See all",
                    ontap: () {},
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 261,
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: BestSelling().Data.length,
                      itemBuilder: (context, index) {
                        final item = BestSelling().Data[index];
                        return BestSelingCard(
                          image: "${item['image']}",
                          title: "${item['title']}",
                          regPrice: item['regPrice'],
                          discountPrice: item['discount'],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 40),

                  //New Arrival
                  RowCatagori(
                    title: "New Arrival",
                    buttonTitle: "See all",
                    ontap: () {},
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 261,
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: BestSelling().Data.reversed.length,
                      itemBuilder: (context, index) {
                        final item = BestSelling().Data[index];
                        return BestSelingCard(
                          image: "${item['image']}",
                          title: "${item['title']}",
                          regPrice: item['regPrice'],
                          discountPrice: item['discount'],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 40),

                  // other view
                  OtherBottomView(
                    coverImage:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF7gNSy5MYiuVFTsrDBmuzpWobJkZn7EaxhQ&s",
                    imageoverText: "Party Abaya",
                    imageoverButton: () {},
                  ),
                  SizedBox(height: 60),
                  // other view 2
                  OtherBottomView(
                    coverImage:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCxJbCllXSh49B_AypFrP-iB3z06f5OY47HA&s",
                    imageoverText: "Ambroidery Abaya",
                    imageoverButton: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffF08F3C).withAlpha(200),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar(
          height: 72,
          icons: [Icons.home_outlined, Icons.tune, Icons.add, Icons.home],
          activeIndex: controller.bottomIndex.value,
          gapLocation: GapLocation.center,
          //notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          backgroundColor: Color(0xffF08F3C).withAlpha(40),
          activeColor: Colors.white,
          inactiveColor: Colors.white54,
          onTap: (value) {
            controller.bottomOntap(bottomtap: value);
          },
        ),
      ),
    );
  }
}
