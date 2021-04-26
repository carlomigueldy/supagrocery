import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_padding.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_text_form_field.dart';

import 'create_product_viewmodel.dart';
import 'create_product_view.form.dart';

@FormView(
  fields: [FormTextField(name: 'name')],
)
class CreateProductView extends ViewModelBuilderWidget<CreateProductViewModel>
    with $CreateProductView {
  @override
  void onViewModelReady(CreateProductViewModel viewModel) {
    super.onViewModelReady(viewModel);

    listenToFormUpdated(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    CreateProductViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Product'),
      ),
      body: AppHPadding(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextFormField(
              controller: nameController,
              focusNode: nameFocusNode,
              labelText: 'Name',
            ),
            SizedBox(height: 15),
            AppButton(
              label: 'Create',
              onPressed: viewModel.createProduct,
              loading: viewModel.isBusy,
            ),
          ],
        ),
      ),
    );
  }

  @override
  CreateProductViewModel viewModelBuilder(BuildContext context) {
    return CreateProductViewModel();
  }
}
