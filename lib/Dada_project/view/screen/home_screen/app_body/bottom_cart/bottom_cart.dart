import 'dart:developer';

import 'package:dada_project/Dada_project/view/screen/home_screen/app_body/bottom_cart/bottom_cart_controller.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/app_body/bottom_cart/widget/increament_widget/increament_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomCart extends StatelessWidget {
  const BottomCart({super.key});

  @override
  Widget build(BuildContext context) {
    BottomCartController controller = Get.put(BottomCartController());
    return Column(
      children: [
        SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return _buildInkWell(
              controller,
              context,
              size: 40,
              title: "Party Borkha Abaya Koliza",
              discount: 3300,
              regPrice: 1850,
            );
          },
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Container(
              height: 241,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffF8F8F8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Summary",
                      style: TextStyle(
                        color: Color(0xff424242),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    _buildRow(title: 'Total', titleans: '5855'),
                    _buildRow(title: 'Shipping Cost', titleans: '80'),
                    _buildRow(
                      title: 'Delivery Location',
                      titleans: 'Inside Dhaka',
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            color: Color(0xff424242),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "8590",
                          style: TextStyle(
                            color: Color(0xff424242),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 52,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF4A758),
                border: Border.all(
                  color: Color(0xff000000).withAlpha(40),
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _buildRow({required String title, String? titleans}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${title}",
          style: TextStyle(
            color: Color(0xff424242),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        Text(
          "${titleans ?? ""}",
          style: TextStyle(
            color: Color(0xff424242),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  InkWell _buildInkWell(
    BottomCartController controller,
    BuildContext context, {
    String? image,
    String? title,
    double? size,
    int? regPrice,
    int? discount,
  }) {
    return InkWell(
      onLongPress: controller.onlongpressToDelete,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left: 6, right: 10),
        height: 100,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xffFFF9F4),
          boxShadow: [
            BoxShadow(
              color: Color(0xff0000000).withAlpha(20),
              offset: Offset(3, 4),
              blurRadius: 4,
            ),
            BoxShadow(
              color: Color(0xff0000000).withAlpha(20),
              offset: Offset(-3, 1),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          spacing: 8,
          children: [
            Obx(
              () => controller.deleteCart.value == true
                  ? Container(
                      height: 15,
                      width: 15,
                      child: Checkbox(
                        checkColor: Colors.black,
                        activeColor: Color(0xffF4A758),
                        value: true,
                        onChanged: (v) {},
                      ),
                    )
                  : SizedBox(),
            ),
            Container(
              height: 80,
              width: 93,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "${image ?? "https://cdn.shopify.com/s/files/1/0400/6998/8502/files/JERSEY_HIJAB_COFFEE_008_540x.jpg?v=1727616601"}",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Column(
                spacing: 2,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 1,
                    "${title ?? ""}",
                    style: TextStyle(
                      color: Color(0xff424242),
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Size: ${size ?? 0}",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    spacing: 3,
                    children: [
                      Text(
                        "BDT ${regPrice ?? 0}",
                        style: TextStyle(
                          color: Color(0xff1E1E1E),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "BDT ${discount ?? 0}",
                        style: TextStyle(
                          color: Color(0xff797979),
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 40),
            Expanded(flex: 2, child: IncreamentButton()),
          ],
        ),
      ),
    );
  }
}
