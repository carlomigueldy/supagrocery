import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_padding.dart';

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
      body: _Body(viewModel: viewModel),
    );
  }

  @override
  ProductSelectionViewModel viewModelBuilder(BuildContext context) {
    return ProductSelectionViewModel();
  }
}

class _Body extends StatelessWidget {
  final ProductSelectionViewModel viewModel;

  const _Body({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isBusy) {
      return Center(child: CircularProgressIndicator());
    }

    if (!viewModel.hasProducts) {
      return AppHPadding(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('No products have been added yet')],
            ),
            SizedBox(height: 15),
            AppButton(
              label: 'Create Product',
              onPressed: viewModel.toCreateProductView,
              fullWidth: false,
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      itemCount: viewModel.data!.length,
      itemBuilder: (context, index) {
        Product item = viewModel.data![index];

        return Dismissible(
          key: Key(item.id),
          onDismissed: (direction) {
            print(direction.index);
          },
          child: ListTile(
            title: Text(item.name.isNotEmpty ? item.name : 'Unnamed'),
            subtitle: Text('Created by ${item.createdBy}'),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container();
      },
    );
  }
}
