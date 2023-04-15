import 'package:flutter/material.dart';
import 'package:some_design/constants/FontsConstants.dart';
import 'package:some_design/reusable_widgets/customText.dart';
import 'package:some_design/utilize/AppLocalization.dart';

Widget TitlePart(context,String Title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CustomText(
        text: Title,
        fonts: FontsConstants.Almarai,
        FontsSize: 13),
  );
}
