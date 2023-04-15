import 'package:flutter/material.dart';
import 'package:some_design/components/ItemMostDemandedParts/ImageParts.dart';
import 'package:some_design/components/ItemMostDemandedParts/InformationOrderPart.dart';
import 'package:some_design/components/ItemMostDemandedParts/SubTitlePart.dart';
import 'package:some_design/components/ItemMostDemandedParts/TitlePart.dart';

class ItemMostDemanded extends StatelessWidget {
  const ItemMostDemanded({Key? key, required this.UrlImage, required this.title}) : super(key: key);
  final String UrlImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: const Color(0xffF5F5F5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagePart(Url: UrlImage),
          TitlePart(context,title),
          SubTitlePart(context),
          InformationOrderPart(context)
        ],
      ),
    );
  }
}
