import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/services/authentication_service.dart';
import 'package:supagrocery/ui/views/home/home_view.dart';
import 'package:supagrocery/ui/views/sign_in/sign_in_view.dart';

class StartupViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    // await Future.delayed(Duration(seconds: 3));

    await _authService.initialize();

    if (_authService.hasUser) {
      return await _navigationService.replaceWithTransition(
        HomeView(),
        transition: 'upToDown',
      );
    }

    return await _navigationService.replaceWithTransition(
      SignInView(),
      transition: 'upToDown',
    );
  }
}
