import 'package:flutter/material.dart';

import '../cont/colors.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    required this.hintText,
    super.key,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColor.placeholder,
            ),
            contentPadding: const EdgeInsets.only(left: 40)),
      ),
    );
  }
}