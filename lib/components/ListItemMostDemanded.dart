import 'package:flutter/material.dart';
import 'package:some_design/components/ItemMostDemandedParts/ItemMostDemanded.dart';
import 'package:some_design/utilize/AppLocalization.dart';

import '../constants/imageconstants.dart';

class ListItemMostDemanded extends StatelessWidget {
  const ListItemMostDemanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> title=[AppLocatization.of(context).translate("cook_door"),AppLocatization.of(context).translate("scaptra_cafe")];
    return Container(
      width: double.infinity,
      height: 225,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ItemMostDemanded(
            UrlImage: ImageConstants.mostDemandedImages[index],title:title[index] ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 2,
      ),
    );
  }
}
