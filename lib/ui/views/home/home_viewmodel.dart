import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_starter_template/app/app.locator.dart';
import 'package:stacked_starter_template/app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void toCreateGroceryView() {
    _navigationService.navigateTo(Routes.createGroceryView);
  }
}
