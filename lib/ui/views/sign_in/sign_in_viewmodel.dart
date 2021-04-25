import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/authentication_service.dart';

import 'sign_in_view.form.dart';

class SignInViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  Future<void> signIn() async {
    final AppUser? user = await runBusyFuture(_authService.signIn(
      payload: AuthDto(email: emailValue!, password: passwordValue!),
    ));

    if (user == null) {
      setValidationMessage('Incorrect email or password, please try again');
      notifyListeners();

      return;
    }

    await _navigationService.replaceWith(Routes.homeView);
  }

  void toSignUpView() {
    _navigationService.replaceWith(Routes.signUpView);
  }
}
