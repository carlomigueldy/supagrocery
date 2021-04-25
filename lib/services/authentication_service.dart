import 'package:supagrocery/app/supabase_api.dart';
import 'package:supagrocery/datamodels/application_models.dart';

class AuthenticationService {
  AppUser? _user = null;
  AppUser? get user => _user;
  bool get hasUser => _user != null;

  Future<void> initialize() async {
    final authUser = supabase.auth.user();

    if (authUser == null) {
      return;
    }

    await fetchUser(id: authUser.id);
  }

  Future signIn({required String email, required String password}) async {
    final response = await supabase.auth.signIn(
      email: email,
      password: password,
    );

    if (response.error != null) {
      return false;
    }

    return false;
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  Future<AppUser?> fetchUser({required String id}) async {
    final response =
        await supabase.from("app_users").select().eq('id', id).execute();

    if (response.error != null) {
      return null;
    }

    final data = AppUser.fromJson(response.data);
    _user = data;

    return data;
  }
}
