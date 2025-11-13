import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
    this.sufIcon,
    this.obsecureText,
    this.keyboardType,
    this.inputFormatter,
  });
  final String? hintText;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final InkWell? sufIcon;
  final bool? obsecureText;
  final TextInputType? keyboardType;
  final TextInputFormatter? inputFormatter;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: [
        inputFormatter ?? FilteringTextInputFormatter.singleLineFormatter,
      ],
      obscureText: obsecureText ?? false,
      controller: controller,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      cursorColor: Colors.grey,
      cursorHeight: 23,
      decoration: InputDecoration(
        suffixIcon: sufIcon,
        hintText: "${hintText ?? ""}",
        hintStyle: TextStyle(
          color: Color(0xffC7C7C7),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      validator: validator,
    );
  }
}
