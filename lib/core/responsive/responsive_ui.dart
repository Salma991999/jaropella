import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen_size.dart';


class ResponsiveUi extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveUi({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final ScreenSize size = ScreenSize.of(context);
    if (size == ScreenSize.desktop) {
      return desktop ?? mobile;
    } else if (size == ScreenSize.tablet) {
      return tablet ?? mobile;
    } else {
      return mobile;
    }
  }
}