import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_starter_template/ui/views/demo_grid/demo_grid_view.dart';
import 'package:stacked_starter_template/ui/views/demo_list/demo_list_view.dart';
import 'package:stacked_starter_template/ui/views/home/home_view.dart';
import 'package:stacked_starter_template/ui/views/about/about_view.dart';
import 'package:stacked_starter_template/ui/views/single_item/single_item_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: HomeView,
      path: '/',
      initial: true,
    ),
    CupertinoRoute(
      page: AboutView,
      path: 'about',
    ),
    CupertinoRoute(
      page: DemoListView,
      path: 'demo-list-view',
    ),
    CupertinoRoute(
      page: DemoGridView,
      path: 'demo-grid-view',
    ),
    CupertinoRoute(
      page: SingleItemView,
      path: 'single-item-view',
    ),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
  ],
)
class AppSetup {}
