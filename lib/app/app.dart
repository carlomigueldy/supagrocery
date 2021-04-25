import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/services/authentication_service.dart';
import 'package:supagrocery/ui/views/create_grocery/create_grocery_view.dart';
import 'package:supagrocery/ui/views/create_product/create_product_view.dart';
import 'package:supagrocery/ui/views/grocery_detail/grocery_detail_view.dart';
import 'package:supagrocery/ui/views/home/home_view.dart';
import 'package:supagrocery/ui/views/product_selection/product_selection_view.dart';
import 'package:supagrocery/ui/views/sign_in/sign_in_view.dart';
import 'package:supagrocery/ui/views/sign_up/sign_up_view.dart';
import 'package:supagrocery/ui/views/startup/startup_view.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: SignInView),
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
