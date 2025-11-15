import 'package:dada_project/Dada_project/view/screen/home_screen/app_body/bottom_cart/bottom_cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomCartController controller = Get.put(BottomCartController());
    return Obx(
      () => AppBar(
        actions: [
          controller.deleteCart == true
              ? InkWell(
                  onTap: () {},
                  child: Icon(Icons.delete_outline, size: 28),
                )
              : SizedBox(),
          SizedBox(width: 5),
          controller.deleteCart == true
              ? InkWell(
                  onTap: () {
                    controller.deleteCart.value = false;
                  },
                  child: Icon(Icons.close, size: 28, color: Colors.black),
                )
              : SizedBox(),
          SizedBox(width: 8),
        ],
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xffF6F6F6),
            child: Image.asset(
              height: 22,
              width: 22,
              "assets/iconImage/Back.png",
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(
            color: Color(0xff1E1E1E),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
