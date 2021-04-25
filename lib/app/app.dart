import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_starter_template/services/authentication_service.dart';
import 'package:stacked_starter_template/ui/views/create_grocery/create_grocery_view.dart';
import 'package:stacked_starter_template/ui/views/create_product/create_product_view.dart';
import 'package:stacked_starter_template/ui/views/grocery_detail/grocery_detail_view.dart';
import 'package:stacked_starter_template/ui/views/home/home_view.dart';
import 'package:stacked_starter_template/ui/views/product_selection/product_selection_view.dart';
import 'package:stacked_starter_template/ui/views/sign_in/sign_in_view.dart';
import 'package:stacked_starter_template/ui/views/sign_up/sign_up_view.dart';
import 'package:stacked_starter_template/ui/views/startup/startup_view.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    CupertinoRoute(page: SignUpView),
    CupertinoRoute(page: SignInView),
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
    LazySingleton(classType: AuthenticationService),
  ],
)
class AppSetup {}
