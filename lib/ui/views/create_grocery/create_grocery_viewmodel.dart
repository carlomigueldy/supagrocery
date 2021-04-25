import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/authentication_service.dart';
import 'package:supagrocery/services/grocery_service.dart';

import 'create_grocery_view.form.dart';

class CreateGroceryViewModel extends FormViewModel {
  final _logger = Logger();
  final _groceryService = locator<GroceryService>();
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();

  @override
  void setFormStatus() {}

  Future<void> createGroceryList() async {
    setBusy(true);
    final response = await _groceryService.create(
      GroceryDto(
        name: nameValue!,
        createdBy: _authService.user!.id,
      ).toJson(),
    );
    setBusy(false);

    if (response.error != null) {
      _logger.e(response.error!.message);
      return;
    }

    final data = Grocery.fromJson(response.data[0]);
    await _navigationService.navigateTo(
      Routes.groceryDetailView,
      arguments: GroceryDetailViewArguments(id: data.id),
    );
  }
}
