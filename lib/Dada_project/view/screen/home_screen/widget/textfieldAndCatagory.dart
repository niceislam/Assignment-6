import 'package:flutter/material.dart';

import '../../../../../widget/textfield.dart';

class TextfieldAndCatagory extends StatelessWidget {
  const TextfieldAndCatagory({
    super.key,
    this.hinText,
    this.ontapCatagory,
    this.controller,
  });
  final String? hinText;
  final VoidCallback? ontapCatagory;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: CustomTextField(
            controller: controller,
            hintText: "${hinText ?? ""}",
            preIcon: Icon(
              Icons.search_outlined,
              color: Color(0xffB3B3B3),
              size: 25,
            ),
            filled: true,
            fillColor: Colors.grey.shade100,
            borderSide: BorderSide.none,
            focusedBorder: BorderSide.none,
          ),
        ),
        InkWell(
          onTap: ontapCatagory,
          child: Container(
            height: 45,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF4A758),
            ),
            child: Center(
              child: Image.asset(
                color: Color(0xff515050),
                height: 22,
                width: 22,
                "assets/iconImage/Setting.png",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
