import 'package:flutter/material.dart';
import 'package:some_design/reusable_widgets/customImage.dart';




Widget ImagePart( {required String Url}) {
  return Container(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child:  CustomImage(
      imageurl: Url,
      Height: 120,
      Width: double.infinity,
      boxFit: BoxFit.cover,
    ),
  );
}
