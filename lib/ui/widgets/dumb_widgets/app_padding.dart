import 'package:flutter/material.dart';

const double PADDING = 20.0;

class AppHPadding extends StatelessWidget {
  final Widget? child;

  const AppHPadding({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PADDING),
      child: child,
    );
  }
}

class AppVPadding extends StatelessWidget {
  final Widget? child;

  const AppVPadding({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PADDING),
      child: child,
    );
  }
}
