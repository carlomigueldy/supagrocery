import 'package:flutter/material.dart';

const double PADDING = 20.0;

class AppHPadding extends StatelessWidget {
  final Widget? child;
  final double? padding;

  AppHPadding({
    Key? key,
    this.child,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? PADDING),
      child: child,
    );
  }
}

class AppVPadding extends StatelessWidget {
  final Widget? child;
  final double? padding;

  const AppVPadding({
    Key? key,
    this.child,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding ?? PADDING),
      child: child,
    );
  }
}
