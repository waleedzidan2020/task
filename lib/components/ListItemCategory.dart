import 'package:flutter/material.dart';
import 'package:some_design/components/ItemCategory.dart';
import 'package:some_design/reusable_widgets/customImage.dart';

import '../utilize/AppLocalization.dart';

class ListItemCategory extends StatelessWidget {
  const ListItemCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoryText = [
      AppLocatization.of(context).translate("quick_request"),
      AppLocatization.of(context).translate("restaurants"),
      AppLocatization.of(context).translate("grocery")
    ];
    return Expanded(
      child: Container(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              ItemCategory(Index: index, Text: categoryText[index]),
          separatorBuilder: (context, index) => const SizedBox(
            width: 12,
          ),
          itemCount: 3,
        ),
      ),
    );
  }
}
