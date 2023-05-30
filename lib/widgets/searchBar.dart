import 'package:flutter/material.dart';

import '../cont/colors.dart';
import '../utils/helpers.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: const ShapeDecoration(
          color: AppColor.placeholderBg,
          shape: StadiumBorder(),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Image.asset(
              Helper.getAssetName("search_filled.png", "virtual"),
            ),
            hintText: "Search Food!",
            hintStyle:
                const TextStyle(color: AppColor.placeholder, fontSize: 18),
            contentPadding: const EdgeInsets.only(top: 17),
          ),
        ),
      ),
    );
  }
}
