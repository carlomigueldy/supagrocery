import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'create_product_viewmodel.dart';

class CreateProductView extends ViewModelBuilderWidget<CreateProductViewModel> {
  @override
  Widget builder(
    BuildContext context,
    CreateProductViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Product'),
      ),
    );
  }

  @override
  CreateProductViewModel viewModelBuilder(BuildContext context) {
    return CreateProductViewModel();
  }
}
