import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          onTap: () {},
          child: Image.asset(
            height: 35,
            width: 35,
            "assets/iconImage/Menu.png",
          ),
        ),
      ),
      centerTitle: true,
      title: Image.asset(width: 133, height: 40, "assets/image/dada.png"),
      actions: [Icon(Icons.person, size: 35), SizedBox(width: 10)],
    );
  }
}
