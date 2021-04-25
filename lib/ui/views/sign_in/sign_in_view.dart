import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'sign_in_viewmodel.dart';

class SignInView extends ViewModelBuilderWidget<SignInViewModel> {
  @override
  Widget builder(
    BuildContext context,
    SignInViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold();
  }

  @override
  SignInViewModel viewModelBuilder(BuildContext context) {
    return SignInViewModel();
  }
}
