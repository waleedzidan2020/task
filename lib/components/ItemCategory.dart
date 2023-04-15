import 'package:flutter/material.dart';
import 'package:some_design/constants/FontsConstants.dart';
import 'package:some_design/constants/imageconstants.dart';
import 'package:some_design/reusable_widgets/customImage.dart';
import 'package:some_design/reusable_widgets/customText.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key, required this.Index, required this.Text})
      : super(key: key);
  final int Index;
  final String Text;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              width: 130,
              height: 130,
              child: CustomImage(
                imageurl: ImageConstants.categoryImages[Index],
                Height: 130,
                Width: 130,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Container(
                width: 130,
                child: CustomText(
                  text: Text,
                  fonts: FontsConstants.Almarai,
                  FontsSize: 14,
                  TextColor: Colors.white,
                  textalign: TextAlign.center,
                )),
          ),
        ],
      ),
    );
  }
}
