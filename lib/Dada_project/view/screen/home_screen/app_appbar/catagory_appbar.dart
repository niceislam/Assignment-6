import 'package:flutter/material.dart';

class CatagoryAppbar extends StatelessWidget {
  const CatagoryAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      title: Text(
        "Categories",
        style: TextStyle(
          color: Color(0xff1E1E1E),
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      actions: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Color(0xffF6F6F6),
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.shopping_bag_outlined, color: Color(0xff757575)),
                Positioned(
                  top: -2,
                  right: -5,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xffF4A758),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
