import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/app.router.dart';

class GroceryDetailViewModel extends BaseViewModel {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();

  final String id;

  GroceryDetailViewModel({required this.id});

  void initialize() {
    _logger.i(id);
  }

  void toProductSelectionView() {
    _navigationService.navigateTo(Routes.productSelectionView);
  }
}
