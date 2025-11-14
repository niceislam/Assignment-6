import 'package:carousel_slider/carousel_slider.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../database/carousel/image.dart';

class CarouselWidget extends StatelessWidget {
  CarouselWidget({super.key});
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: CarouselImage().Image
              .map(
                (e) => Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage("${e}"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            onPageChanged: (value, index) {
              controller.currentIndexCarousel.value = value;
            },
            height: 147,
            enlargeFactor: 0.3,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayInterval: Duration(seconds: 5),
          ),
        ),
        Positioned(
          bottom: 8,
          right: MediaQuery.sizeOf(context).width / 2.26,
          child: Obx(
            () => Row(
              spacing: 5,
              children: CarouselImage().Image
                  .asMap()
                  .entries
                  .map(
                    (item) => Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentIndexCarousel == item.key
                            ? Color(0xff0D99FF)
                            : Color(0xffCBCBCB),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
