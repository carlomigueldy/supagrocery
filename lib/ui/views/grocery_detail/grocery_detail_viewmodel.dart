import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/grocery_service.dart';
import 'package:supagrocery/ui/views/product_selection/product_selection_view.dart';

class GroceryDetailViewModel extends FutureViewModel<Grocery?> {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _groceryService = locator<GroceryService>();

  final String id;

  GroceryDetailViewModel({required this.id});

  bool get hasProducts => data!.products!.length > 0;

  List<Product> get products => data!.products ?? [];

  @override
  Future<Grocery?> futureToRun() async {
    return await _fetchGrocery();
  }

  void initialize() {
    _logger.i(id);
  }

  Future<Grocery?> _fetchGrocery() async {
    final response = await _groceryService.fetchGroceryList(id: id);
    _logger.i(response.toJson());

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    return Grocery.fromJson(response.data);
  }

  void toProductSelectionView() {
    _navigationService.navigateWithTransition(
      ProductSelectionView(),
      transition: 'downToUp',
    );
  }
}
