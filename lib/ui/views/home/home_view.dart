import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_padding.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/supabase_logo.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_viewmodel.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  @override
  void onViewModelReady(HomeViewModel viewModel) {
    super.onViewModelReady(viewModel);

    viewModel.initialize();
  }

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
      drawer: _Drawer(viewModel: viewModel),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: viewModel.toCreateGroceryView,
      ),
      body: RefreshIndicator(
        onRefresh: viewModel.futureToRun,
        child: _Body(viewModel: viewModel),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }
}

class _Drawer extends StatelessWidget {
  final HomeViewModel viewModel;

  const _Drawer({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: AppHPadding(
        child: Column(
          children: [
            AppVPadding(
              padding: 75,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SupabaseLogo(),
                    ],
                  ),
                  AppVPadding(
                    child: Text(
                      'SupaGrocery',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text('Buy me a coffee ☕', style: TextStyle(fontSize: 16)),
              onTap: () => launch('https://www.buymeacoffee.com/carlomigueldy'),
            ),
            ListTile(
              title: Text('@CarloMiguelDy 🐦', style: TextStyle(fontSize: 16)),
              onTap: () => launch('https://twitter.com/CarloMiguelDy'),
            ),
            ListTile(
              title: Text('GitHub 🖥️', style: TextStyle(fontSize: 16)),
              onTap: () => launch('https://github.com/carlomigueldy'),
            ),
            Spacer(),
            AppVPadding(
              child: AppButton(
                label: 'Logout',
                onPressed: viewModel.signOut,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final HomeViewModel viewModel;

  const _Body({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isBusy) {
      return Center(child: CircularProgressIndicator());
    }

    return RefreshIndicator(
      onRefresh: viewModel.onRefresh,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
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
            if (viewModel.data!.length == 0)
              AppHPadding(child: _NoData())
            else
              _list()
          ],
        ),
      ),
    );
  }

  ListView _list() {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: viewModel.data!.length,
      itemBuilder: (context, index) {
        Grocery item = viewModel.data![index];

        return AppHPadding(
          child: ListTile(
            title: Text(item.name),
            subtitle: Text('Grocery List'),
            isThreeLine: true,
            trailing: viewModel.busy(item.id)
                ? CircularProgressIndicator()
                : SizedBox.shrink(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            onTap: () => viewModel.toGroceryDetailView(
              id: item.id,
            ),
            onLongPress: () => viewModel.onLongPressedGroceryList(item.id),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 15);
      },
    );
  }
}

class _NoData extends StatelessWidget {
  const _NoData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('No data');
  }
}
