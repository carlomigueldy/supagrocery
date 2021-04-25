import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/grocery_service.dart';

class GroceryDetailViewModel extends FutureViewModel<Grocery?> {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _groceryService = locator<GroceryService>();

  final String id;

  GroceryDetailViewModel({required this.id});

  @override
  Future<Grocery?> futureToRun() async {
    return await _fetchGrocery();
  }

  void initialize() {
    _logger.i(id);
  }

  Future<Grocery?> _fetchGrocery() async {
    final response = await _groceryService.find(id);
    _logger.i(response.toJson());

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    return Grocery.fromJson(response.data);
  }

  void toProductSelectionView() {
    _navigationService.navigateTo(Routes.productSelectionView);
  }
}
