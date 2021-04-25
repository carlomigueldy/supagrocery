import 'package:logger/logger.dart';
import 'package:postgrest/postgrest.dart';
import 'package:supagrocery/app/supabase_api.dart';

abstract class SupabaseService<T> {
  final _logger = Logger();

  String tableName() {
    return "";
  }

  Future<PostgrestResponse> all(String id) async {
    _logger.i(tableName() + ' ' + id);
    final response = await supabase.from(tableName()).select().execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> find(String id) async {
    _logger.i(tableName() + ' ' + id);
    final response = await supabase
        .from(tableName())
        .select()
        .eq('id', id)
        .single()
        .execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> create(Map<String, dynamic> json) async {
    _logger.i(tableName() + ' ' + json.toString());
    final response = await supabase.from(tableName()).insert(json).execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> update({
    required String id,
    required Map<String, dynamic> json,
  }) async {
    _logger.i(tableName() + ' ' + json.toString());
    final response =
        await supabase.from(tableName()).update(json).eq('id', id).execute();
    _logger.i(response.toJson());
    return response;
  }

  Future<PostgrestResponse> delete(String id) async {
    _logger.i(tableName() + ' ' + id);
    final response =
        await supabase.from(tableName()).delete().eq('id', id).execute();
    _logger.i(response.toJson());
    return response;
  }
}
