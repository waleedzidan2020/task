import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      required this.fonts,
      required this.FontsSize,
      this.weightfont,this.TextColor, this.textalign})
      : super(key: key);

  final String fonts;
  final String text;
  final double FontsSize;
  final FontWeight? weightfont;
 final Color? TextColor;
  final TextAlign? textalign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign:textalign ,
      style: TextStyle(
        fontFamily: fonts,
        fontSize: FontsSize,
        fontWeight: weightfont,
        color:TextColor
      ),
    );
  }
}
