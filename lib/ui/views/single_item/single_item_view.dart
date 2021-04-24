import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'single_item_viewmodel.dart';

class SingleItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleItemViewModel>.reactive(
      viewModelBuilder: () => SingleItemViewModel(),
      builder: (
        BuildContext context,
        SingleItemViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(title: Text('Single Item View')),
          body: Center(
            child: Text(
              'SingleItemView',
            ),
          ),
        );
      },
    );
  }
}
