import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'grocery_detail_viewmodel.dart';

class GroceryDetailView extends ViewModelBuilderWidget<GroceryDetailViewModel> {
  final String id;

  const GroceryDetailView({Key? key, required this.id}) : super(key: key);

  @override
  void onViewModelReady(GroceryDetailViewModel viewModel) {
    super.onViewModelReady(viewModel);

    viewModel.initialize();
  }

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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: viewModel.toProductSelectionView,
      ),
    );
  }

  @override
  GroceryDetailViewModel viewModelBuilder(BuildContext context) {
    return GroceryDetailViewModel(id: id);
  }
}
