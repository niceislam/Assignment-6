import 'package:dada_project/Dada_project/view/screen/splash_screen/splash_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController().onchanged());
    return Container(
      color: CupertinoColors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          children: [
            Container(
              height: 283,
              width: 283,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF4A75826).withAlpha(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  height: 235,
                  width: 235,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF4A75826).withAlpha(70),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 235,
                      width: 235,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF4A75826).withAlpha(70),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 235,
                          width: 235,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: CupertinoColors.white,
                          ),
                          child: Center(
                            child: Container(
                              height: 40,
                              width: 133,
                              child: Image.asset("assets/image/dada.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
