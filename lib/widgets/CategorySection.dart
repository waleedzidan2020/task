import 'package:flutter/material.dart';
import 'package:some_design/reusable_widgets/customImage.dart';
import 'package:some_design/constants/FontsConstants.dart';
import 'package:some_design/reusable_widgets/customText.dart';
import 'package:some_design/utilize/AppLocalization.dart';

import '../components/ListItemCategory.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: AppLocatization.of(context).translate("category"),
            fonts: FontsConstants.Almarai,
            FontsSize: 21,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 130,
            child: Row(
              children: const [
                ListItemCategory()
              ],
            ),
          )
        ],
      ),
    );
  }
}
