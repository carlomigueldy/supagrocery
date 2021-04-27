import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_padding.dart';

import 'product_selection_viewmodel.dart';

class ProductSelectionView extends StatefulWidget {
  final String groceryId;

  const ProductSelectionView({
    Key? key,
    required this.groceryId,
  }) : super(key: key);

  @override
  _ProductSelectionViewState createState() => _ProductSelectionViewState();
}

class _ProductSelectionViewState extends State<ProductSelectionView> {
  List<Product?> _selectedProducts = [];

  bool get _hasSelectedProducts => _selectedProducts.length > 0;

  bool _isSelected(String id) {
    return _selectedProducts.firstWhere(
          (element) => element!.id == id,
          orElse: () {
            return null;
          },
        ) !=
        null;
  }

  void deselect(String id) {
    _selectedProducts.removeWhere((element) => element!.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductSelectionViewModel>.reactive(
      viewModelBuilder: () =>
          ProductSelectionViewModel(groceryId: widget.groceryId),
      builder: (
        BuildContext context,
        ProductSelectionViewModel viewModel,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Select Product(s)'),
          ),
          floatingActionButton: _hasSelectedProducts
              ? ExtendedFab(
                  viewModel: viewModel, selectedProducts: _selectedProducts)
              : _Fab(viewModel: viewModel),
          body: _body(viewModel: viewModel),
        );
      },
    );
  }

  Widget _body({required ProductSelectionViewModel viewModel}) {
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

    return RefreshIndicator(
      onRefresh: viewModel.onRefreshList,
      child: Scrollbar(
        child: ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: viewModel.data!.length,
          itemBuilder: (context, index) {
            Product item = viewModel.data![index];

            return Dismissible(
              key: UniqueKey(),
              onDismissed: (_) {
                viewModel.deleteProduct(item.id);
              },
              child: ListTile(
                contentPadding: const EdgeInsets.all(15),
                title: Text(item.name.isNotEmpty ? item.name : 'Unnamed'),
                // subtitle: Text('Created by ${item.createdBy}'),
                onTap: () {
                  setState(() {
                    if (_isSelected(item.id)) {
                      deselect(item.id);
                      return;
                    }

                    _selectedProducts.add(item);
                  });
                },
                trailing: _isSelected(item.id)
                    ? Icon(
                        Icons.check_circle,
                        size: 18,
                        color: Theme.of(context).primaryColor,
                      )
                    : SizedBox.shrink(),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container();
          },
        ),
      ),
    );
  }
}

class ExtendedFab extends StatelessWidget {
  final ProductSelectionViewModel viewModel;
  final List<Product?> selectedProducts;

  const ExtendedFab({
    Key? key,
    required this.viewModel,
    required this.selectedProducts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => viewModel.addToList(selectedProducts),
      label: Text(
        'Continue',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      shape: _shape(),
    );
  }

  RoundedRectangleBorder _shape() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(5));
  }
}

class _Fab extends StatelessWidget {
  final ProductSelectionViewModel viewModel;

  const _Fab({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: viewModel.toCreateProductView,
    );
  }
}
