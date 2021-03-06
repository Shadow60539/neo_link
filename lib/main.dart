import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_link_app/ui/colors/colors.dart';
import 'package:neo_link_app/ui/pages/splash_page.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.lightBlue,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(
          primaryColor: kLightBlue,
          textTheme: TextTheme(
            bodyText1: TextStyle(fontFamily: 'Lato', color: Colors.white),
            bodyText2: TextStyle(),
          ),
        ),
        home: SplashPage());
  }
}
