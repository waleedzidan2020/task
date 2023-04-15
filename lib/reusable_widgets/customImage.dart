import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {Key? key,
      required this.Width,
      required this.imageurl,
      required this.Height, this.boxFit})
      : super(key: key);
  final String imageurl;
  final double Width;
  final double Height;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageurl,

      height: Height,
      width: Width,
      fit: boxFit,

    );
  }
}
