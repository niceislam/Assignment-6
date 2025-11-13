import 'package:dada_project/Dada_project/view/screen/login_screen/login_body/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        title: Image.asset(height: 40, width: 133, "assets/image/dada.png"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: Colors.grey.shade100, thickness: 4),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Row(
                      children: [
                        Expanded(
                          child: _buildInkWell(
                            ontap: controller.signInTap,
                            context,
                            title: 'Sign in',
                            conColor: controller.signIndex == 0
                                ? Color(0xffF4A758)
                                : Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: _buildInkWell(
                            ontap: controller.signUpTap,
                            context,
                            title: 'Sign up',
                            conColor: controller.signIndex == 1
                                ? Color(0xffF4A758)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Obx(() => controller.newUserPage[controller.signIndex.value]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell _buildInkWell(
    BuildContext context, {
    required String title,
    required conColor,
    VoidCallback? ontap,
  }) {
    return InkWell(
      onTap: ontap,
      child: Column(
        spacing: 6,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${title}",
            style: TextStyle(
              color: Color(0xff5F5F5F),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            height: 3,
            width: MediaQuery.sizeOf(context).width,
            color: conColor,
          ),
        ],
      ),
    );
  }
}
