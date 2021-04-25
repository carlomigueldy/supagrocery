import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'create_grocery_viewmodel.dart';

class CreateGroceryView extends ViewModelBuilderWidget<CreateGroceryViewModel> {
  @override
  Widget builder(
    BuildContext context,
    CreateGroceryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Grocery List'),
      ),
    );
  }

  @override
  CreateGroceryViewModel viewModelBuilder(BuildContext context) {
    return CreateGroceryViewModel();
  }
}
