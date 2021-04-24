// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/about/about_view.dart';
import '../ui/views/demo_grid/demo_grid_view.dart';
import '../ui/views/demo_list/demo_list_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/single_item/single_item_view.dart';

class Routes {
  static const String homeView = '/';
  static const String aboutView = 'about';
  static const String demoListView = 'demo-list-view';
  static const String demoGridView = 'demo-grid-view';
  static const String singleItemView = 'single-item-view';
  static const all = <String>{
    homeView,
    aboutView,
    demoListView,
    demoGridView,
    singleItemView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.aboutView, page: AboutView),
    RouteDef(Routes.demoListView, page: DemoListView),
    RouteDef(Routes.demoGridView, page: DemoGridView),
    RouteDef(Routes.singleItemView, page: SingleItemView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    AboutView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => AboutView(),
        settings: data,
      );
    },
    DemoListView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DemoListView(),
        settings: data,
      );
    },
    DemoGridView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DemoGridView(),
        settings: data,
      );
    },
    SingleItemView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SingleItemView(),
        settings: data,
      );
    },
  };
}
