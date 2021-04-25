import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/supabase_service.dart';

class GroceryService extends SupabaseService<Grocery> {
  @override
  String tableName() {
    return "groceries";
  }
}
