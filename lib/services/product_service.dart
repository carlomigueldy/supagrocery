import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/supabase_service.dart';

class ProductService extends SupabaseService<Product> {
  @override
  String tableName() {
    return "products";
  }
}
