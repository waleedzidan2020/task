import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/imageconstants.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: ImageConstants.SliderImages.map((e) {
        print(e);
        return Image.asset(e);
      }).toList(),
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(seconds: 1),
        reverse: false,
        initialPage: 0,
        autoPlayCurve: Curves.easeInBack,
        scrollDirection: Axis.horizontal,
        viewportFraction: 1,
        enlargeCenterPage: false,
      ),
    );
  }
}
