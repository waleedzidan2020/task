import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:some_design/components/ItemMostDemandedParts/ItemMostDemanded.dart';
import 'package:some_design/components/ListItemMostDemanded.dart';
import 'package:some_design/constants/imageconstants.dart';
import 'package:some_design/reusable_widgets/customImage.dart';
import 'package:some_design/reusable_widgets/customText.dart';
import 'package:some_design/utilize/AppLocalization.dart';

import '../constants/FontsConstants.dart';

class MostDemandedSection extends StatelessWidget {
  const MostDemandedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleSection(context),
          const SizedBox(
            height: 16,
          ),
          ListItemMostDemanded()
        ],
      ),
    );
  }

  Widget TitleSection(context) {
    return Row(
      children: [
        CustomText(
          text: AppLocatization.of(context).translate("most_wanted"),
          fonts: FontsConstants.Almarai,
          FontsSize: 21,
        ),
        const Spacer(),
        CustomText(
          text: AppLocatization.of(context).translate("all"),
          fonts: FontsConstants.Almarai,
          FontsSize: 16,
          TextColor: const Color(0xff007A7B),
        ),
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.arrow_forward_ios_sharp,
            size: 20,
            color: Color(0xff007A7B),
          ),
        )
      ],
    );
  }
}
