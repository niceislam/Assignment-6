import 'package:dada_project/Dada_project/database/catagories/catagories_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../cart_Tap/cart_Tap.dart';
import '../widget/textfieldAndCatagory.dart';

class BottomCatagory extends StatelessWidget {
  const BottomCatagory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        GridView.builder(
          itemCount: CatagoriesData().Data.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final item = CatagoriesData().Data[index];
            return InkWell(
              onTap: () {
                Get.to(
                  () => CartTap(
                    CartItemList: CatagoriesData().Data[index]['items'],
                  ),
                );
              },
              child: _buildContainer(
                title: "${item['title']}",
                quantity: item['items'].length,
              ),
            );
          },
        ),
      ],
    );
  }

  Container _buildContainer({String? title, int? quantity}) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 80,
      width: 170,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff0000000).withAlpha(20),
            blurRadius: 4,
            offset: Offset(3, 4),
          ),
          BoxShadow(
            color: Color(0xff0000000).withAlpha(20),
            blurRadius: 4,
            offset: Offset(-3, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFFF9F4),
      ),
      child: Column(
        spacing: 3,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${title ?? ""}",
            style: TextStyle(
              color: Color(0xff424242),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          Row(
            children: [
              Text(
                "${quantity ?? 0}",
                style: TextStyle(
                  color: Color(0xff757575),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
              Text(
                " Items",
                style: TextStyle(
                  color: Color(0xff757575),
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
