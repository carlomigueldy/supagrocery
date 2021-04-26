import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_error_text.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_text_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_text_form_field.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/supabase_logo.dart';

import 'sign_up_viewmodel.dart';
import 'sign_up_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'name'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password', isPassword: true),
])
class SignUpView extends ViewModelBuilderWidget<SignUpViewModel>
    with $SignUpView {
  @override
  void onViewModelReady(SignUpViewModel viewModel) {
    super.onViewModelReady(viewModel);

    listenToFormUpdated(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
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
                    labelText: 'Name',
                    controller: nameController,
                    focusNode: nameFocusNode,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 10),
                  AppTextFormField(
                    labelText: 'Email',
                    controller: emailController,
                    focusNode: emailFocusNode,
                    keyboardType: TextInputType.emailAddress,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 10),
                  AppTextFormField(
                    labelText: 'Password',
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    helperText: 'Required',
                  ),
                  SizedBox(height: 30),
                  AppButton(
                    label: 'Create Account',
                    loading: viewModel.isBusy,
                    onPressed: () {
                      viewModel.signUp();
                    },
                  ),
                  SizedBox(height: 5),
                  AppErrorText(text: viewModel.modelError),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      SizedBox(width: 5),
                      AppTextButton(
                        label: 'Sign In',
                        onTap: viewModel.toSignInView,
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
  SignUpViewModel viewModelBuilder(BuildContext context) {
    return SignUpViewModel();
  }
}
