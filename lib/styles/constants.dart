import 'package:flutter/material.dart';

const double _extraSmall = 5;
const double _small = 10;
const double _medium = 15;
const double _large = 20;
const double _extraLarge = 25;

class BorderRadiusHelper {
  static BorderRadiusGeometry get extraSmallAll =>
      BorderRadius.circular(_extraSmall);
  static BorderRadiusGeometry get smallAll => BorderRadius.circular(_small);
  static BorderRadiusGeometry get mediumAll => BorderRadius.circular(_medium);
  static BorderRadiusGeometry get largeAll => BorderRadius.circular(_large);
  static BorderRadiusGeometry get extraLargeAll =>
      BorderRadius.circular(_extraLarge);
}

class EdgeInsetsHelper {
  static EdgeInsetsGeometry get extraSmallAll =>
      const EdgeInsets.all(_extraSmall);
  static EdgeInsetsGeometry get smallAll => const EdgeInsets.all(_small);
  static EdgeInsetsGeometry get mediumAll => const EdgeInsets.all(_medium);
  static EdgeInsetsGeometry get largeAll => const EdgeInsets.all(_large);
  static EdgeInsetsGeometry get extraLargeAll =>
      const EdgeInsets.all(_extraLarge);
}
