import 'package:gotrue/src/user.dart';
import 'package:logger/logger.dart';
import 'package:postgrest/src/postgrest_response.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/supabase_api.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/local_storage_service.dart';

class AuthenticationService {
  final _logger = Logger();
  final _localStorageService = locator<LocalStorageService>();

  AppUser? _user = null;
  AppUser? get user => _user;
  bool get hasUser => _user != null;

  Future<void> initialize() async {
    final accessToken = await _localStorageService.getItem('token');
    _logger.i(accessToken);

    if (accessToken == null) {
      return;
    }

    final response = await supabase.auth.api.getUser(accessToken);
    final user = response.data!;
    _logger.i(user.toJson());
    await fetchUser(id: user.id);
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
    await _localStorageService.setItem('token', response.data!.accessToken);
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
    await _localStorageService.setItem('token', response.data!.accessToken);
    return await fetchUser(id: user.id);
  }

  Future<void> signOut() async {
    final response = await supabase.auth.signOut();

    if (response.error != null) {
      _logger.e(response.error!.message);
      return;
    }
    _logger.i(response.rawData);
    await _localStorageService.removeItem('token');
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
