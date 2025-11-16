import 'package:dada_project/Dada_project/view/screen/home_screen/home_screen.dart';
import 'package:dada_project/Dada_project/view/screen/login_screen/login_page.dart';
import 'package:dada_project/Dada_project/view/screen/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
