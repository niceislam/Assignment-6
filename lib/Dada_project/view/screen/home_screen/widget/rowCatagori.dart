import 'package:flutter/material.dart';

class RowCatagori extends StatelessWidget {
  const RowCatagori({
    super.key, this.title, this.buttonTitle, this.ontap,
  });
  final String? title;
  final String? buttonTitle;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${title ?? ""}",
          style: TextStyle(
            color: Color(0xff5F5F5F),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        InkWell(
          onTap: ontap,
          child: Text(
            "${buttonTitle ?? ""}",
            style: TextStyle(
              color: Color(0xffFF8900),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
