import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:supagrocery/ui/views/startup/startup_viewmodel.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_text_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/supabase_logo.dart';
import 'package:url_launcher/url_launcher.dart';

class StartupView extends ViewModelBuilderWidget<StartupViewModel> {
  @override
  Future<void> onViewModelReady(viewModel) async {
    super.onViewModelReady(viewModel);

    await viewModel.runStartupLogic();
  }

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SupabaseLogo()],
              ),
              SizedBox(height: 15),
              Text(
                'SupaGrocery',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 50),
              Text('Simple grocery app powered by Supabase'),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Built by'),
                  SizedBox(width: 5),
                  AppTextButton(
                    label: '@CarloMiguelDy',
                    onTap: () async {
                      await launch('https://twitter.com/CarloMiguelDy');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) {
    return StartupViewModel();
  }
}
