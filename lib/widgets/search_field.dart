import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        prefixIcon: Image.asset(getAsset('search')),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: kGrayColor,
          fontWeight: FontWeight.w500,
          fontSize: 14
        ),
        filled: true,
        fillColor: kGrayColor.withOpacity(0.15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        )
      ),
    );
  }
}
