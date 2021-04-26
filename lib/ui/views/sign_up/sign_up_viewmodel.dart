import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supagrocery/app/app.router.dart';
import 'package:supagrocery/app/app.locator.dart';
import 'package:supagrocery/datamodels/application_models.dart';
import 'package:supagrocery/services/authentication_service.dart';

import 'sign_up_view.form.dart';

class SignUpViewModel extends FormViewModel {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _snackbarService = locator<SnackbarService>();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  Future<void> signUp() async {
    try {
      setBusy(true);
      _logger.i(formValueMap);

      final user = await _authService.signUp(
        payload: AuthDto(
          email: emailValue ?? '',
          password: passwordValue ?? '',
          name: nameValue ?? '',
        ),
      );

      if (user == null) {
        setError('Fill in all required fields.');
        _snackbarService.showSnackbar(
          title: 'Error',
          message: modelError,
        );

        return;
      }

      await _navigationService.replaceWith(Routes.homeView);
      _snackbarService.showSnackbar(message: 'You have created an account');
    } catch (e) {
      _logger.e(e);
      _snackbarService.showSnackbar(
        title: 'Error',
        message: e.toString(),
      );
    } finally {
      setBusy(false);
    }
  }

  void toSignInView() {
    _navigationService.replaceWith(Routes.signInView);
  }
}
