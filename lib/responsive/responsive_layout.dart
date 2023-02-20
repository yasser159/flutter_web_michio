import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter_web_michio/responsive/dimensions.dart";

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget descktopBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.descktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return descktopBody;
        }
      },
    );
  }
}
