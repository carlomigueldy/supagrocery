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

  void signOut() {
    _authService.signOut();
    _navigationService.replaceWith(Routes.signInView);
  }
}
