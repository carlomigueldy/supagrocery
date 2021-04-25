import 'package:supagrocery/app/supabase_api.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/supabase_service.dart';

class GroceryService extends SupabaseService<Grocery> {
  @override
  String tableName() {
    return "groceries";
  }

  Future<Grocery?> fetchGroceryList({required String id}) async {
    final response = await supabase
        .from("groceries")
        .select("*, grocery_products(*)")
        .eq('id', id)
        .execute();

    if (response.error != null) {
      return null;
    }
  }
}
