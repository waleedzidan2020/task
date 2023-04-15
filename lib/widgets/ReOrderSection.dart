import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:some_design/components/ItemReOrder.dart';
import 'package:some_design/constants/FontsConstants.dart';
import 'package:some_design/constants/imageconstants.dart';
import 'package:some_design/reusable_widgets/customImage.dart';
import 'package:some_design/reusable_widgets/customText.dart';
import 'package:some_design/utilize/AppLocalization.dart';

class ReOrderSection extends StatelessWidget {
  const ReOrderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> TitleList=[AppLocatization.of(context).translate("indian_restaurant"),AppLocatization.of(context).translate("quick_request")];
    List<String> Subtitle=[AppLocatization.of(context).translate("family_meal"),AppLocatization.of(context).translate("salam_store")];
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: AppLocatization.of(context).translate("re-order"),
            fonts: FontsConstants.Almarai,
            FontsSize: 21,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 100,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ItemReOrder(ImageUrl: ImageConstants.reOrderImages[index],title: TitleList[index],subtitle:Subtitle[index] ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 8,
              ),
              itemCount: 2,
            ),
          )
        ],
      ),
    );
  }
}
