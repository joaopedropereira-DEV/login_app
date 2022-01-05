import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResposiveLayout({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static double mobileLimit = 640.0;
  static double tabletLimit = 1200.0;

  static bool isMobile(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return width < mobileLimit;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return width < tabletLimit && width >= mobileLimit;
  }

  static bool isDesktop(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return width >= tabletLimit;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileLimit) {
        return mobile;
      } else if (constraints.maxWidth < tabletLimit) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
