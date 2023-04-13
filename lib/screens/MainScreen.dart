import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:some_design/widgets/SearchSection.dart';
import '../utilize/AppLocalization.dart';
import '../widgets/AppBarSection.dart';
import '../widgets/CategorySection.dart';
import '../widgets/ReOrderSection.dart';
import '../widgets/SliderSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.Func}) : super(key: key);

  final VoidCallback Func;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: AppLocatization.of(context).locale.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      AppBarSection(
                        func: () => Func(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SearchSection(),
                      const SizedBox(
                        height: 21,
                      ),
                      const SliderSection(),
                      const SizedBox(
                        height: 24,
                      ),
                    const  CategorySection(),
                      const SizedBox(
                        height: 25,
                      ),
                    const  ReOrderSection()
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
