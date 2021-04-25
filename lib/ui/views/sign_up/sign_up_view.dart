import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_viewmodel.dart';

class SignUpView extends ViewModelBuilderWidget<SignUpViewModel> {
  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold();
  }

  @override
  SignUpViewModel viewModelBuilder(BuildContext context) {
    return SignUpViewModel();
  }
}
