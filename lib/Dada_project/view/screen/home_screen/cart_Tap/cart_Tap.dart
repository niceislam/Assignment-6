import 'package:dada_project/Dada_project/view/screen/home_screen/widget/Best_selling.dart';
import 'package:dada_project/Dada_project/view/screen/home_screen/widget/textfieldAndCatagory.dart';
import 'package:flutter/material.dart';

class CartTap extends StatelessWidget {
  const CartTap({super.key, required this.CartItemList});

  final dynamic CartItemList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          children: [
            TextfieldAndCatagory(hinText: "Search Product"),
            Expanded(
              child: GridView.builder(
                itemCount: CartItemList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.71,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  final item = CartItemList[index];
                  return BestSelingCard(
                    positionedImage: Positioned(
                      top: -8,
                      left: 9,
                      child: Image.asset(
                        height: 35,
                        width: 35,
                        "assets/iconImage/offer.png",
                      ),
                    ),
                    title: "${item['title']}",
                    image: "${item['image']}",
                    regPrice: item["regPrice"],
                    addtocard: () {},
                    discountPrice: item['discount'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
