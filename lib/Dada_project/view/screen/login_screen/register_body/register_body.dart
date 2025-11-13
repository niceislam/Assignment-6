import 'dart:developer';

import 'package:dada_project/Dada_project/view/screen/login_screen/login_body/login_controller.dart';
import 'package:dada_project/Dada_project/view/screen/login_screen/register_body/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../widget/orLogin.dart';
import '../../../../../widget/textfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());
    LoginController controllerlogin = Get.put(LoginController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let’s Get Started!",
          style: TextStyle(
            color: Color(0xff5F5F5F),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Create an account.",
          style: TextStyle(
            color: Color(0xff5F5F5F),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 25),
        Text(
          "Name",
          style: TextStyle(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
        CustomTextField(hintText: "Enter your Name"),
        SizedBox(height: 23),
        Text(
          "Phone Number",
          style: TextStyle(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
        CustomTextField(
          hintText: "Enter your phone number",
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 23),
        Text(
          "Password",
          style: TextStyle(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
        Obx(
          () => CustomTextField(
            obsecureText: controller.visibility.value,
            hintText: "*************",
            sufIcon: InkWell(
              onTap: controller.passTap,
              child: controller.visibility == true
                  ? Icon(
                      Icons.visibility_off_outlined,
                      color: Color(0xffD1D1D1),
                      size: 20,
                    )
                  : Icon(
                      Icons.visibility_outlined,
                      color: Color(0xffD1D1D1),
                      size: 20,
                    ),
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(height: 30),
        InkWell(
          onTap: () {},
          child: Container(
            height: 52,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF4A758),
            ),
            child: Center(
              child: Text(
                "Register",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Or",
              style: TextStyle(
                color: Color(0xff222222),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        OrLogin(
          ontap: () {},
          image: "assets/iconImage/google.png",
          title: "Sign up with google",
        ),
        SizedBox(height: 15),
        OrLogin(
          ontap: () {},
          image: "assets/iconImage/facebook.png",
          title: "Sign up with facebook",
        ),
        SizedBox(height: 40),
        Row(
          spacing: 3,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(
                color: Color(0xff424242),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            InkWell(
              onTap: () {
                controllerlogin.signIndex.value = 0;
              },
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xffF4A758),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
