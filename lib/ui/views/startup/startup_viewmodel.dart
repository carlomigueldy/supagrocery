import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/services/authentication_service.dart';

class StartupViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    await _authService.initialize();

    if (_authService.hasUser) {
      return _navigationService.navigateTo(Routes.homeView);
    }

    return _navigationService.navigateTo(Routes.signInView);
  }
}
