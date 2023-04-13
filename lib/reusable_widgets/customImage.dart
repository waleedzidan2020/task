import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {Key? key,
      required this.Width,
      required this.imageurl,
      required this.Height})
      : super(key: key);
  final String imageurl;
  final double Width;
  final double Height;

  @override
  Widget build(BuildContext context) {
    return Ink.image(

      height: Height,
      width: Width,
      image: AssetImage(
        imageurl,
      ),
    );
  }
}
