// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/create_grocery/create_grocery_view.dart';
import '../ui/views/create_product/create_product_view.dart';
import '../ui/views/grocery_detail/grocery_detail_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/product_selection/product_selection_view.dart';
import '../ui/views/sign_in/sign_in_view.dart';
import '../ui/views/sign_up/sign_up_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String signUpView = '/sign-up-view';
  static const String signInView = '/sign-in-view';
  static const String createGroceryView = '/create-grocery-view';
  static const String createProductView = '/create-product-view';
  static const String groceryDetailView = '/grocery-detail-view';
  static const String productSelectionView = '/product-selection-view';
  static const all = <String>{
    startupView,
    homeView,
    signUpView,
    signInView,
    createGroceryView,
    createProductView,
    groceryDetailView,
    productSelectionView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.signInView, page: SignInView),
    RouteDef(Routes.createGroceryView, page: CreateGroceryView),
    RouteDef(Routes.createProductView, page: CreateProductView),
    RouteDef(Routes.groceryDetailView, page: GroceryDetailView),
    RouteDef(Routes.productSelectionView, page: ProductSelectionView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpView(),
        settings: data,
      );
    },
    SignInView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInView(),
        settings: data,
      );
    },
    CreateGroceryView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateGroceryView(),
        settings: data,
      );
    },
    CreateProductView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateProductView(),
        settings: data,
      );
    },
    GroceryDetailView: (data) {
      var args = data.getArgs<GroceryDetailViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => GroceryDetailView(
          key: args.key,
          id: args.id,
        ),
        settings: data,
      );
    },
    ProductSelectionView: (data) {
      var args = data.getArgs<ProductSelectionViewArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProductSelectionView(
          key: args.key,
          groceryId: args.groceryId,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// GroceryDetailView arguments holder class
class GroceryDetailViewArguments {
  final Key? key;
  final String id;
  GroceryDetailViewArguments({this.key, required this.id});
}

/// ProductSelectionView arguments holder class
class ProductSelectionViewArguments {
  final Key? key;
  final String groceryId;
  ProductSelectionViewArguments({this.key, required this.groceryId});
}
