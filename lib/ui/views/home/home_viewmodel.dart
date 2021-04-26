import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/authentication_service.dart';
import 'package:supagrocery/services/grocery_service.dart';

class HomeViewModel extends FutureViewModel<List<Grocery>> {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _groceryService = locator<GroceryService>();
  final _authService = locator<AuthenticationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackbarService = locator<SnackbarService>();

  AppUser? get user => _authService.user;

  @override
  Future<List<Grocery>> futureToRun() async {
    return _fetchGroceryLists();
  }

  void initialize() {
    _logger.i('Init');
  }

  Future<List<Grocery>> _fetchGroceryLists() async {
    final response = await _groceryService.all();

    if (response.error != null) {
      return [];
    }

    final list = response.data as List;
    return list.map((e) => Grocery.fromJson(e)).toList();
  }

  void toCreateGroceryView() {
    _navigationService.navigateTo(Routes.createGroceryView);
  }

  void toGroceryDetailView({required String id}) {
    _navigationService.navigateTo(
      Routes.groceryDetailView,
      arguments: GroceryDetailViewArguments(id: id),
    );
  }

  Future<void> onLongPressedGroceryList(String id) async {
    try {
      final response = await _bottomSheetService.showBottomSheet(
        title: 'Confirm Delete',
        description: 'This action will be irreversible.',
      );
      _logger.i('${response?.confirmed}, ${response?.responseData}');
      if (response?.confirmed == false) {
        _logger.i('Not confirmed');
        return;
      }

      await deleteGroceryList(id);
    } catch (e) {
      _snackbarService.showSnackbar(title: 'Error', message: e.toString());
    }
  }

  Future<void> deleteGroceryList(String id) async {
    try {
      setBusyForObject(id, true);
      final response = await _groceryService.delete(id);

      if (response.error != null) {
        _logger.e(response.error?.message);
        return;
      }

      _snackbarService.showSnackbar(
        title: 'Success',
        message: 'Grocery list deleted',
      );
      data?.removeWhere((element) => element.id == id);
      notifyListeners();
    } catch (e) {} finally {
      setBusyForObject('delete-grocery-list', false);
    }
  }

  void signOut() {
    _authService.signOut();
    _navigationService.replaceWith(Routes.signInView);
  }
}
