import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/color.dart';
import 'package:whatsapp_clone/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone/screens/responsive_layout.dart';
import 'package:whatsapp_clone/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webscreenLayout: WebScreenLayout(),
      ),
    );
  }
}
