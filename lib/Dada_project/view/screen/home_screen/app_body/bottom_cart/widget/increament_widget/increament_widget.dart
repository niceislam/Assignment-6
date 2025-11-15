import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../bottom_cart_controller.dart';

class IncreamentButton extends StatelessWidget {
  const IncreamentButton({super.key});

  @override
  Widget build(BuildContext context) {
    BottomCartController controller = Get.put(BottomCartController());
    return Container(
      height: 92,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffEDB77B).withAlpha(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: controller.increamentButton,
            child: CircleAvatar(
              radius: 13,
              backgroundColor: Color(0xffF4A758),
              child: Center(
                child: Icon(Icons.add, size: 23, color: Color(0xff424242)),
              ),
            ),
          ),
          Obx(
            () => Text(
              "${controller.quantity}",
              style: TextStyle(
                color: Color(0xff1E1E1E),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          InkWell(
            onTap: controller.dicreamentButton,
            child: CircleAvatar(
              radius: 13,
              backgroundColor: Color(0xffF4A758),
              child: Center(
                child: Icon(Icons.remove, size: 23, color: Color(0xff424242)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
