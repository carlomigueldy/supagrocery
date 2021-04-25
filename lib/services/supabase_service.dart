import 'package:logger/logger.dart';
import 'package:supagrocery/app/supabase_api.dart';

abstract class SupabaseService<T> {
  final _logger = Logger();

  String tableName() {
    return "";
  }

  Future all(String id) async {
    _logger.i(tableName() + ' ' + id);
    return await supabase.from(tableName()).select().execute();
  }

  Future find(String id) async {
    _logger.i(tableName() + ' ' + id);
    return await supabase
        .from(tableName())
        .select()
        .eq('id', id)
        .single()
        .execute();
  }

  Future create(Map<String, dynamic> json) async {
    _logger.i(tableName() + ' ' + json.toString());
    return await supabase.from(tableName()).insert(json).execute();
  }

  Future update({
    required String id,
    required Map<String, dynamic> json,
  }) async {
    _logger.i(tableName() + ' ' + json.toString());
    return await supabase.from(tableName()).update(json).eq('id', id).execute();
  }

  Future delete(String id) async {
    _logger.i(tableName() + ' ' + id);
    return await supabase.from(tableName()).delete().eq('id', id).execute();
  }
}
