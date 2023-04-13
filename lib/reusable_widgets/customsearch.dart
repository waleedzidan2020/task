import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/FontsConstants.dart';
import '../utilize/AppLocalization.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 250,
      height: 36,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF5F5F5),
          hintText: AppLocatization.of(context).translate("search_word"),
          hintStyle: TextStyle(
              fontFamily: FontsConstants.Almarai,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          prefixIcon: Padding(
            padding:
            const EdgeInsets.only(left: 8, bottom: 8, right: 4, top: 6),
            child: SvgPicture.asset(
              "assets/icons/searchicon.svg",
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
