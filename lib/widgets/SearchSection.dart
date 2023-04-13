import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:some_design/components/customImage.dart';
import 'package:some_design/components/customText.dart';
import 'package:some_design/constants/imageconstants.dart';
import 'package:some_design/utilize/AppLocalization.dart';

import '../components/customsearch.dart';
import '../constants/FontsConstants.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const CustomSearch(),
        const SizedBox(
          width: 10,
        ),
        Container(
          color: Color(0xffF5F5F5),
          width: 70,
          height: 36,
          child: Row(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3, right: 3),
                  child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 6,
                      child: CustomText(
                        text: "50",
                        fonts: FontsConstants.Almarai,
                        FontsSize: 10,
                        TextColor: Colors.black,
                      )),
                ),
              ),
              SvgPicture.asset(
                "assets/icons/salaicon.svg",
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  color: Color(0xffDAE5E6),
                  height: 23,
                  width: 1,
                ),
              ),
              Expanded(
                child: CustomText(
                    text: "300ج", fonts: FontsConstants.Almarai, FontsSize: 10),
              ),
            ],
          ),
        )
      ],
    );
  }
}
