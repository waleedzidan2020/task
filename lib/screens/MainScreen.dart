import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:some_design/widgets/SearchSection.dart';
import '../utilize/AppLocalization.dart';
import '../widgets/AppBarSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key,required this.Func}) : super(key: key);

  final VoidCallback Func;
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection:AppLocatization.of(context).locale.languageCode=="ar"?TextDirection.rtl:TextDirection.ltr ,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children:  [
                      AppBarSection(func: () => Func(),),
                     const SizedBox(
                        height: 16,
                      ),
                   const   SearchSection()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
