import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_button.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_padding.dart';
import 'package:supagrocery/ui/widgets/dumb_widgets/app_text_form_field.dart';

import 'create_grocery_view.form.dart';
import 'create_grocery_viewmodel.dart';

@FormView(
  fields: [FormTextField(name: 'name')],
)
class CreateGroceryView extends ViewModelBuilderWidget<CreateGroceryViewModel>
    with $CreateGroceryView {
  @override
  Widget builder(
    BuildContext context,
    CreateGroceryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Grocery List'),
      ),
      body: AppHPadding(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextFormField(
              controller: nameController,
              focusNode: nameFocusNode,
              labelText: 'Name',
              helperText: 'Name your grocery listing',
            ),
            SizedBox(height: 15),
            AppButton(
              label: 'Create',
              onPressed: viewModel.createGroceryList,
            ),
          ],
        ),
      ),
    );
  }

  @override
  CreateGroceryViewModel viewModelBuilder(BuildContext context) {
    return CreateGroceryViewModel();
  }
}
