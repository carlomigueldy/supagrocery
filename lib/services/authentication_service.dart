import 'package:gotrue/src/user.dart';
import 'package:logger/logger.dart';
import 'package:postgrest/src/postgrest_response.dart';
import 'package:supagrocery/app/supabase_api.dart';
import 'package:supagrocery/datamodels/application_models.dart';

class AuthenticationService {
  final _logger = Logger();
  AppUser? _user = null;
  AppUser? get user => _user;
  bool get hasUser => _user != null;

  Future<void> initialize() async {
    final authUser = supabase.auth.user();
    _logger.i(authUser);

    if (authUser == null) {
      return;
    }

    await fetchUser(id: authUser.id);
  }

  Future<AppUser?> signIn({required AuthDto payload}) async {
    final response = await supabase.auth.signIn(
      email: payload.email,
      password: payload.password,
    );

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }
    _logger.i(response.data);
    return await fetchUser(id: response.data!.user!.id);
  }

  Future<AppUser?> signUp({required AuthDto payload}) async {
    final response =
        await supabase.auth.signUp(payload.email, payload.password);

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    final user = response.data!.user!;
    _logger.i(user.toJson());
    await _createUser(user, payload);
    return await fetchUser(id: user.id);
  }

  Future<void> signOut() async {
    final response = await supabase.auth.signOut();

    if (response.error != null) {
      _logger.e(response.error!.message);
      return;
    }

    _logger.i(response.rawData);

    return;
  }

  Future<AppUser?> fetchUser({required String id}) async {
    final response = await supabase
        .from("app_users")
        .select()
        .eq('id', id)
        .single()
        .execute();

    _logger.i(
      'Count: ${response.count}, Status: ${response.status}, Data: ${response.data}',
    );

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    _logger.i(response.data);
    final data = AppUser.fromJson(response.data);
    _user = data;

    return data;
  }

  Future<PostgrestResponse> _createUser(User user, AuthDto payload) {
    return supabase
        .from("app_users")
        .insert(
          AppUser(
            id: user.id,
            name: payload.name!,
            email: user.email,
          ),
        )
        .execute();
  }
}
