import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_button.dart';
import 'package:supagrocery/ui/views/sign_in/sign_in_view.form.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_error_text.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_text_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_text_form_field.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/supabase_logo.dart';

import 'sign_in_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password', isPassword: true),
])
class SignInView extends ViewModelBuilderWidget<SignInViewModel>
    with $SignInView {
  @override
  void onViewModelReady(SignInViewModel viewModel) {
    super.onViewModelReady(viewModel);

    listenToFormUpdated(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    SignInViewModel viewModel,
    Widget? child,
  ) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign In"),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.85,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SupabaseLogo(),
                  SizedBox(height: 40),
                  AppTextFormField(
                    labelText: 'Email',
                    controller: emailController,
                    focusNode: emailFocusNode,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  AppTextFormField(
                    labelText: 'Password',
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(height: 30),
                  AppButton(
                    label: 'Sign In',
                    loading: viewModel.isBusy,
                    onPressed: () {
                      viewModel.signIn();
                    },
                  ),
                  SizedBox(height: 5),
                  AppErrorText(text: viewModel.modelError),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account yet?"),
                      SizedBox(width: 5),
                      AppTextButton(
                        label: 'Sign Up',
                        onTap: viewModel.toSignUpView,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  SignInViewModel viewModelBuilder(BuildContext context) {
    return SignInViewModel();
  }
}
