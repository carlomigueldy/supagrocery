import 'package:logger/logger.dart';
import 'package:postgrest/postgrest.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/grocery_service.dart';
import 'package:supagrocery/ui/views/product_selection/product_selection_view.dart';

class GroceryDetailViewModel extends FutureViewModel<Grocery?> {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _groceryService = locator<GroceryService>();
  final _bottomSheetService = locator<BottomSheetService>();

  final String id;

  GroceryDetailViewModel({required this.id});

  bool get hasProducts {
    if (data == null) return false;

    return data!.products!.length > 0;
  }

  List<GroceryProduct?>? get products => data!.groceryProducts ?? [];

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
      ProductSelectionView(groceryId: id),
      transition: 'downToUp',
    );
  }

  Future<void> removeProduct(String id) async {
    try {
      final PostgrestResponse response = await runBusyFuture(
        _groceryService.removeProduct(id: id),
        busyObject: id,
        throwException: true,
      );

      if (response.error != null) {
        _logger.e(response.error!.message);
        return null;
      }

      data!.groceryProducts!.removeWhere((element) => element.id == id);
      notifyListeners();

      _logger.i(response.toJson());
    } catch (e) {
      _logger.e(e);
    }
  }

  Future<void> markProductChecked(GroceryProduct item) async {
    try {
      final response = await _groceryService.markProductChecked(payload: item);

      if (response.error != null) {
        _logger.e(response.error!.message);
        return null;
      }

      await futureToRun();
      notifyListeners();

      _logger.i('message');
    } catch (e) {
      _logger.e(e);
    }
  }

  Future<void> onRefreshList() async {
    await futureToRun();
    notifyListeners();
  }

  Future<void> deleteAllItem() async {
    _bottomSheetService.showBottomSheet(
      title: 'Delete All',
      description: 'Are you sure you want to delete all items in this list?',
    );
  }
}
