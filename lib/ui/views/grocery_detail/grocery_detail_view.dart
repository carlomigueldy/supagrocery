import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_padding.dart';

import 'grocery_detail_viewmodel.dart';

class GroceryDetailView extends StatefulWidget {
  final String id;

  const GroceryDetailView({Key? key, required this.id}) : super(key: key);

  @override
  _GroceryDetailViewState createState() => _GroceryDetailViewState();
}

class _GroceryDetailViewState extends State<GroceryDetailView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GroceryDetailViewModel>.reactive(
      onModelReady: (viewModel) {
        viewModel.initialize();
      },
      viewModelBuilder: () => GroceryDetailViewModel(id: widget.id),
      builder: (
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
          body: _body(viewModel: viewModel),
        );
      },
    );
  }

  Text _title(GroceryDetailViewModel viewModel) =>
      Text(viewModel.data?.name ?? '');

  Widget _body({required GroceryDetailViewModel viewModel}) {
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
              children: [Text('No items in this list yet')],
            ),
            SizedBox(height: 15),
            AppButton(
              label: 'Select',
              onPressed: viewModel.toProductSelectionView,
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
          itemCount: viewModel.products!.length,
          itemBuilder: (context, index) {
            GroceryProduct item = viewModel.products![index]!;

            return Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                viewModel.removeProduct(item.id);
                // setState(() {});
              },
              child: viewModel.busy(item.id)
                  ? Container()
                  : ListTile(
                      contentPadding: const EdgeInsets.all(15),
                      title: Text(item.product!.name),
                      subtitle: item.quantity > 1
                          ? _multipleItems(item)
                          : _singleItem(item),
                      trailing: _popupMenuButton(viewModel, item),
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

  PopupMenuButton<String> _popupMenuButton(
      GroceryDetailViewModel viewModel, GroceryProduct item) {
    return PopupMenuButton(
      onSelected: (String value) {
        switch (value) {
          case 'check':
            viewModel.markProductChecked(item);
            break;
          default:
            break;
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(child: Text('Mark checked'), value: 'check'),
          PopupMenuItem(child: Text('Remove'), value: 'remove'),
        ];
      },
    );
  }

  Text _multipleItems(GroceryProduct item) {
    String suffixText = ' items';

    if (item.unit!.isNotEmpty) {
      suffixText = ' ${item.unit!}';
    }

    return Text(item.quantity.toString() + suffixText);
  }

  Text _singleItem(GroceryProduct item) {
    String suffixText = ' item';

    if (item.unit!.isNotEmpty) {
      suffixText = ' ${item.unit!}';
    }

    return Text(item.quantity.toString() + suffixText);
  }
}
