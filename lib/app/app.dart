import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_starter_template/ui/views/create_grocery/create_grocery_view.dart';
import 'package:stacked_starter_template/ui/views/create_product/create_product_view.dart';
import 'package:stacked_starter_template/ui/views/grocery_detail/grocery_detail_view.dart';
import 'package:stacked_starter_template/ui/views/home/home_view.dart';
import 'package:stacked_starter_template/ui/views/product_selection/product_selection_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    CupertinoRoute(page: CreateGroceryView),
    CupertinoRoute(page: CreateProductView),
    CupertinoRoute(page: GroceryDetailView),
    CupertinoRoute(page: ProductSelectionView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
  ],
)
class AppSetup {}
