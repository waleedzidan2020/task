import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:some_design/screens/MainScreen.dart';
import 'package:some_design/utilize/AppLocalization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('ar', 'SA');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _toggleLocale() {
    setState(() {
      _locale = _locale.languageCode == 'en'
          ? const Locale('ar', 'SA')
          : const Locale('en', 'US');
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,


      theme: ThemeData(
        primarySwatch: Colors.blue,

appBarTheme: const AppBarTheme(
  systemOverlayStyle: SystemUiOverlayStyle(

  )
)
      ),

      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', 'SA'),
      ],
      locale: _locale,
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        AppLocatization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home:  HomeScreen(Func: () => _toggleLocale(),),
    );
  }
}
