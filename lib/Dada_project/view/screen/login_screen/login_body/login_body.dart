import 'package:dada_project/Dada_project/view/screen/login_screen/login_body/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../widget/orLogin.dart';
import '../../../../../widget/textfield.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Form(
      key: controller.mykey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back!",
            style: TextStyle(
              color: Color(0xff5F5F5F),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Please enter your details to login.",
            style: TextStyle(
              color: Color(0xff5F5F5F),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 25),
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
            controller: controller.loginPhonecontroller,
            validator: (value) {
              if (value == "" || value == null) {
                return "Field can't be empty";
              }
            },
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
              controller: controller.loginPasswordcontroller,
              validator: (value) {
                if (value == "" || value == null) {
                  return "Field can't be empty";
                }
              },
              obsecureText: controller.visibility.value,
              hintText: "*************",
              sufIcon: InkWell(
                onTap: controller.visibilityButton,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Color(0xffF4A758),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: controller.loginTap,
            child: Container(
              height: 52,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF4A758),
              ),
              child: Center(
                child: Text(
                  "Login",
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
            title: "Sign in with google",
          ),
          SizedBox(height: 15),
          OrLogin(
            ontap: () {},
            image: "assets/iconImage/facebook.png",
            title: "Sign in with facebook",
          ),
          SizedBox(height: 40),
          Row(
            spacing: 3,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                  color: Color(0xff424242),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                onTap: () {
                  controller.signIndex.value = 1;
                },
                child: Text(
                  "Register here",
                  style: TextStyle(
                    color: Color(0xffF4A758),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
