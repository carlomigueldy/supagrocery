import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'product_selection_viewmodel.dart';

class ProductSelectionView
    extends ViewModelBuilderWidget<ProductSelectionViewModel> {
  @override
  Widget builder(
    BuildContext context,
    ProductSelectionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Product(s)'),
      ),
    );
  }

  @override
  ProductSelectionViewModel viewModelBuilder(BuildContext context) {
    return ProductSelectionViewModel();
  }
}
