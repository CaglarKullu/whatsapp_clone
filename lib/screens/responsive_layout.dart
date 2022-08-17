import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webscreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webscreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        // web screen
        return webscreenLayout;
      }
      //mobile screen
      else {
        return mobileScreenLayout;
      }
    });
  }
}
