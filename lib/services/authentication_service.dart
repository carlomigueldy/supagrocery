import 'package:logger/logger.dart';
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
    _logger.i(response);

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    return await fetchUser(id: response.data!.user!.id);
  }

  Future<AppUser?> signUp({required AuthDto payload}) async {
    final response =
        await supabase.auth.signUp(payload.email, payload.password);
    _logger.i(response);

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    return await fetchUser(id: response.data!.user!.id);
  }

  Future<void> signOut() async {
    final response = await supabase.auth.signOut();
    _logger.i(response);

    if (response.error != null) {
      _logger.e(response.error!.message);
      return;
    }

    return;
  }

  Future<AppUser?> fetchUser({required String id}) async {
    final response =
        await supabase.from("app_users").select().eq('id', id).execute();
    _logger.i(response);

    if (response.error != null) {
      _logger.e(response.error!.message);
      return null;
    }

    final data = AppUser.fromJson(response.data);
    _logger.i(data);
    _user = data;

    return data;
  }
}
