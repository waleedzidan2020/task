import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:some_design/constants/FontsConstants.dart';
import 'package:some_design/reusable_widgets/customText.dart';
import 'package:some_design/utilize/AppLocalization.dart';

import '../../constants/imageconstants.dart';

Widget InformationOrderPart(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
    child: Row(
      children: [
        SvgPicture.asset(
          width: 20,
          height: 20,
          ImageConstants.arriveIcon,
        ),
        const SizedBox(
          width: 4,
        ),
        CustomText(
          text: "45 ${AppLocatization.of(context).translate("minute")}",
          fonts: FontsConstants.Almarai,
          FontsSize: 9,
          TextColor: Colors.black38,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: CircleAvatar(
            radius: 1.8,
            backgroundColor: Colors.black38,
          ),
        ),
        SvgPicture.asset(
          width: 20,
          height: 20,
          ImageConstants.deliveryIcon,
        ),
        const SizedBox(
          width: 4,
        ),
        CustomText(
          text: "15 ج",
          fonts: FontsConstants.Almarai,
          FontsSize: 9,
          TextColor: Colors.black38,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: CircleAvatar(
            radius: 1.8,
            backgroundColor: Colors.black38,
          ),
        ),
        SvgPicture.asset(
          width: 20,
          height: 20,
          ImageConstants.rateIcon,
        ),
        const SizedBox(
          width: 4,
        ),
        CustomText(
          text: "4.5",
          fonts: FontsConstants.Almarai,
          FontsSize: 9,
          TextColor: Colors.black38,
        ),
      ],
    ),
  );
}