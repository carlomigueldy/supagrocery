import 'package:postgrest/postgrest.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/supabase_api.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/authentication_service.dart';
import 'package:supagrocery/services/supabase_service.dart';

class ProductService extends SupabaseService<Product> {
  final _authService = locator<AuthenticationService>();

  @override
  String tableName() {
    return "products";
  }

  Future<PostgrestResponse> fetchProducts() async {
    return await supabase
        .from("products")
        .select("*")
        .eq('created_by', _authService.user!.id)
        .execute();
  }
}
