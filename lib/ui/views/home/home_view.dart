import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_padding.dart';

import 'home_viewmodel.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SupaGrocery'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: viewModel.toCreateGroceryView,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            AppHPadding(
              child: Text(
                'Welcome back ${viewModel.user!.name}',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 30),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return AppHPadding(
                  child: ListTile(
                    title: Text('Title'),
                    subtitle: Text('24 items, 3 marked check'),
                    isThreeLine: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    // trailing: IconButton(
                    //   icon: Icon(Icons.delete_outline),
                    //   onPressed: () => viewModel.toGroceryDetailView(id: ''),
                    // ),
                    onTap: () => viewModel.toGroceryDetailView(
                      id: index.toString(),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 15);
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }
}
