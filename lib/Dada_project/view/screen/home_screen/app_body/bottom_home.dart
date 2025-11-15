import 'package:flutter/material.dart';
import '../../../../database/catagories/catagories_data.dart';
import '../widget/Best_selling.dart';
import '../widget/Other_view.dart';
import '../widget/carousel_image.dart';
import '../widget/rowCatagori.dart';
import '../widget/textfieldAndCatagory.dart';

class BottomHome extends StatelessWidget {
  const BottomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        CarouselWidget(),
        SizedBox(height: 15),
        // Categories
        RowCatagori(title: "Categories"),
        SizedBox(height: 15),
        SizedBox(
          height: 109,
          child: ListView.builder(
            itemCount: CatagoriesData().Data.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item =
              CatagoriesData().Data[index]['items'][0]['image'];
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 109,
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("${item}"),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Container(
                    height: 18,
                    width: MediaQuery.sizeOf(context).width,
                    color: Color(0xff201E1F).withAlpha(450),
                    child: Center(
                      child: Text(
                        maxLines: 1,
                        "${CatagoriesData().Data[index]['title']}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 30),

        // Best Selling
        RowCatagori(
          title: "Best Selling",
          buttonTitle: "See all",
          ontap: () {},
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 261,
          child: ListView.builder(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: CatagoriesData().Data[0]['items'].length,
            itemBuilder: (context, index) {
              final item = CatagoriesData().Data[0]['items'][index];
              return BestSelingCard(
                image: "${item['image']}",
                title: "${item['title']}",
                regPrice: item['regPrice'],
                discountPrice: item['discount'],
              );
            },
          ),
        ),
        SizedBox(height: 40),

        //New Arrival
        RowCatagori(
          title: "New Arrival",
          buttonTitle: "See all",
          ontap: () {},
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 261,
          child: ListView.builder(
            reverse: true,
            clipBehavior: Clip.none,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: CatagoriesData().Data[0]['items'].length,
            itemBuilder: (context, index) {
              final item = CatagoriesData().Data[0]['items'][index];
              return BestSelingCard(
                image: "${item['image']}",
                title: "${item['title']}",
                regPrice: item['regPrice'],
                discountPrice: item['discount'],
              );
            },
          ),
        ),
        SizedBox(height: 40),

        // other view
        OtherBottomView(
          coverImage: "${CatagoriesData().Data[0]['hignLigtImage']}",
          imageoverText: "${CatagoriesData().Data[0]['title']}",
          imageoverButton: () {},
        ),
        SizedBox(height: 60),
        // other view 2
        OtherBottomView(
          coverImage: "${CatagoriesData().Data[2]['hignLigtImage']}",
          imageoverText: "${CatagoriesData().Data[2]['title']}",
          imageoverButton: () {},
        ),
      ],
    );
  }
}
