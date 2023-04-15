import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:some_design/reusable_widgets/customImage.dart';
import 'package:some_design/reusable_widgets/customText.dart';
import 'package:some_design/utilize/AppLocalization.dart';
import '../constants/FontsConstants.dart';
import '../constants/imageconstants.dart';

class ItemReOrder extends StatelessWidget {
  const ItemReOrder(
      {Key? key,
      required this.ImageUrl,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String ImageUrl;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffF5F5F5))),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: CustomImage(
                imageurl: ImageUrl,
                Width: 28,
                Height: 28,
                boxFit: BoxFit.cover,
              ),
            ),
            minLeadingWidth: 2,
            title: CustomText(
              text: title,
              FontsSize: 12,
              fonts: FontsConstants.Almarai,
              textalign: TextAlign.start,
            ),
            subtitle: CustomText(
              text: subtitle,
              FontsSize: 12,
              fonts: FontsConstants.Almarai,
              textalign: TextAlign.start,
            ),
            horizontalTitleGap: 8,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  width: 20,
                  height: 20,
                  ImageConstants.reOrderIcon,
                ),
                const SizedBox(
                  width: 4,
                ),
                CustomText(
                  text: AppLocatization.of(context).translate("re-order"),
                  fonts: FontsConstants.Almarai,
                  FontsSize: 12,
                  TextColor: const Color(0xff007A7B),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
