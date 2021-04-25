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
        title: viewModel.isBusy ? Text('Loading...') : _title(viewModel),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: viewModel.toProductSelectionView,
      ),
      body: _Body(viewModel: viewModel),
    );
  }

  Text _title(GroceryDetailViewModel viewModel) => Text(viewModel.data!.name);

  @override
  GroceryDetailViewModel viewModelBuilder(BuildContext context) {
    return GroceryDetailViewModel(id: id);
  }
}

class _Body extends StatelessWidget {
  final GroceryDetailViewModel viewModel;

  const _Body({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isBusy) {
      return Center(child: CircularProgressIndicator());
    }

    return ListView.separated(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container();
      },
      separatorBuilder: (context, index) {
        return Container();
      },
    );
  }
}
