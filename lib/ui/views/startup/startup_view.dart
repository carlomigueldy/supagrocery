import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_starter_template/ui/views/startup/startup_viewmodel.dart';

class StartupView extends ViewModelBuilderWidget<StartupViewModel> {
  @override
  void onViewModelReady(viewModel) {
    viewModel.runStartupLogic();
  }

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold();
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) {
    return StartupViewModel();
  }
}
