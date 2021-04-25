import 'package:stacked/stacked.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/services/grocery_service.dart';

class CreateGroceryViewModel extends FormViewModel {
  final _groceryService = locator<GroceryService>();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  Future<void> createGroceryList() async {
    _groceryService.create({"name": "Carlo"});
  }
}
