import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'grocery_detail_viewmodel.dart';

class GroceryDetailView extends ViewModelBuilderWidget<GroceryDetailViewModel> {
  @override
  Widget builder(
    BuildContext context,
    GroceryDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grocery List'),
      ),
    );
  }

  @override
  GroceryDetailViewModel viewModelBuilder(BuildContext context) {
    return GroceryDetailViewModel();
  }
}
