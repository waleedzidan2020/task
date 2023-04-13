import 'package:flutter/material.dart';
import 'package:some_design/constants/FontsConstants.dart';
import 'package:some_design/constants/imageconstants.dart';
import 'package:some_design/reusable_widgets/customText.dart';

import '../reusable_widgets/customImage.dart';
import '../utilize/AppLocalization.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({Key? key,required this.func}) : super(key: key);
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 25,
      child: Row(
        children: [

          CustomImage(
            imageurl: ImageConstants.locationIcon,
            Width: 24,
            Height: 24,
          ),
          const SizedBox(
            width: 4,
          ),
          CustomText(
            text: AppLocatization.of(context).translate("County"),
            fonts: FontsConstants.Almarai,
            FontsSize: 13,
          ),
          const Spacer(),
          MaterialButton(
            onPressed: () {
              func();
            },
            minWidth: 28,
            height: 16,
            child: CustomText(
              text: AppLocatization.of(context).translate("Change_button"),
              fonts: FontsConstants.Almarai,
              FontsSize: 14,
              weightfont: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
