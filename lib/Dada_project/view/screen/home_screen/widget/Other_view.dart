import 'package:flutter/material.dart';

import '../../../../database/best_selling/best_selling.dart';
import 'Best_selling.dart';

class OtherBottomView extends StatelessWidget {
  const OtherBottomView({
    super.key,
    this.coverImage,
    this.imageoverText,
    this.imageoverButton,
  });
  final String? coverImage;
  final String? imageoverText;
  final VoidCallback? imageoverButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 442,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffEDB77B1A).withAlpha(15),
      ),
      child: Column(
        children: [
          Container(
            height: 134,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("${coverImage}"),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${imageoverText}",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: imageoverButton,
                    child: Container(
                      height: 20,
                      width: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffEDB77B).withAlpha(220),
                      ),
                      child: Center(
                        child: Text(
                          "View all",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 45),
          SizedBox(
            height: 230,
            child: ListView.builder(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: BestSelling().Data.reversed.length,
              itemBuilder: (context, index) {
                final item = BestSelling().Data[index];
                return BestSelingCard(
                  containerheight: 250,
                  containerwidth: 160,
                  imageHeight: 140,
                  image: "${item['image']}",
                  title: "${item['title']}",
                  regPrice: item['regPrice'],
                  discountPrice: item['discount'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
