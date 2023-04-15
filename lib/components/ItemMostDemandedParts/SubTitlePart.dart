import 'package:flutter/material.dart';
import 'package:some_design/constants/FontsConstants.dart';
import 'package:some_design/reusable_widgets/customText.dart';
import 'package:some_design/utilize/AppLocalization.dart';

Widget SubTitlePart(context) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8),
  child: Row(
    children: [
      CustomText(
        text: AppLocatization.of(context).translate("burger"),
        fonts: FontsConstants.Almarai,
        FontsSize: 9,
        TextColor: Colors.black26,
      ),
      const SizedBox(
        width: 5,
      ),
      const CircleAvatar(
        radius: 1.8,
        backgroundColor: Colors.black26,
      ),
      const SizedBox(
        width: 5,
      ),
      CustomText(
        text: AppLocatization.of(context).translate("fried_chicken"),
        fonts: FontsConstants.Almarai,
        FontsSize: 9,
        TextColor: Colors.black26,
      ),
    ],
  ),
);