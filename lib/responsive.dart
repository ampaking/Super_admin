import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop help us later

// if device size is less then 850 it will shown as a mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

// if device size is more then or equal 850 and less then 1100 it will shown as a Tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width < 1100;

// if device size is more then 1100 it will shown as a Desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
