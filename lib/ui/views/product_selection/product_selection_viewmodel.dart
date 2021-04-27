import 'package:flutter/src/widgets/dismissible.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/grocery_service.dart';
import 'package:supagrocery/services/product_service.dart';

class ProductSelectionViewModel extends FutureViewModel<List<Product>?> {
  final _logger = Logger();
  final _productService = locator<ProductService>();
  final _navigationServce = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  final _groceryService = locator<GroceryService>();

  final String groceryId;

  ProductSelectionViewModel({required this.groceryId});

  bool get hasProducts {
    if (data == null) return false;

    return data!.length > 0;
  }

  @override
  Future<List<Product>?> futureToRun() async {
    return await _fetchProducts();
  }

  Future<List<Product>?> _fetchProducts() async {
    final response = await _productService.fetchProducts();
    _logger.i(response.toJson());

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    List<dynamic> data = response.data;
    return data.map((e) => Product.fromJson(e)).toList();
  }

  void toCreateProductView() {
    _navigationServce.navigateTo(Routes.createProductView);
  }

  Future<void> deleteProduct(String id) async {
    try {
      final response = await _productService.delete(id);

      if (response.error != null) {
        final errorMessage = response.error!.message;
        _snackbarService.showSnackbar(
          title: 'Error',
          message: errorMessage,
        );
        _logger.e(errorMessage);
        return;
      }

      data!.removeWhere((element) => element.id == id);
      notifyListeners();
      _snackbarService.showSnackbar(
        title: 'Success',
        message: 'Product deleted.',
      );
    } catch (e) {
      _logger.e(e);
    } finally {
      notifyListeners();
    }
  }

  Future<void> addToList(List<Product?> selectedProducts) async {
    final response = await _groceryService.addProductsToList(
      id: groceryId,
      products: selectedProducts,
    );

    if (response.error != null) {
      _logger.e(response.error!.message);
      return;
    }

    _navigationServce.replaceWith(
      Routes.groceryDetailView,
      arguments: GroceryDetailViewArguments(id: groceryId),
    );
  }

  Future<void> onRefreshList() async {
    await futureToRun();
    notifyListeners();
  }
}
