import 'package:flutter/material.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key});

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
        "Search",
        style: TextStyle(
          color: Color(0xff1E1E1E),
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    );
  }
}
