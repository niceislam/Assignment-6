import 'package:flutter/material.dart';

class BestSelingCard extends StatelessWidget {
  const BestSelingCard({
    super.key,
    this.image,
    this.title,
    this.regPrice,
    this.discountPrice,
    this.addtocard,
    this.containerheight,
    this.containerwidth,
    this.imageHeight,
    this.positionedImage,
  });
  final String? image;
  final String? title;
  final int? regPrice;
  final int? discountPrice;
  final VoidCallback? addtocard;
  final double? containerheight;
  final double? containerwidth;
  final double? imageHeight;
  final Positioned? positionedImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: containerheight ?? 250,
      width: containerwidth ?? 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xff00000012).withAlpha(70),
            blurRadius: 4,
            offset: Offset(-1, 5),
            spreadRadius: 0.00,
          ),
        ],
      ),
      child: Column(
        spacing: 5,
        children: [
          Stack(
            children: [
              Container(
                height: imageHeight ?? 170,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "${image ?? "https://upload.wikimedia.org/wikipedia/commons/a/a3/Image-not-found.png"}",
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.grey,
                ),
              ),
              positionedImage ?? Positioned(child: Text("")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text(
                  maxLines: 1,
                  "${title ?? ""}",
                  style: TextStyle(
                    color: Color(0xff1E1E1E),
                    overflow: TextOverflow.ellipsis,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  spacing: 6,
                  children: [
                    Text(
                      "${regPrice ?? 0}",
                      style: TextStyle(
                        color: Color(0xff1E1E1E),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "${discountPrice ?? 0}",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Color(0xff797979),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: InkWell(
                    onTap: addtocard,
                    child: Container(
                      height: 30,
                      width: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: BoxBorder.all(
                          color: Color(0xff0000001A).withAlpha(20),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                            color: Color(0xff1E1E1E),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
