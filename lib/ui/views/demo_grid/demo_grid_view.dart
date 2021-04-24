import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'demo_grid_viewmodel.dart';

class DemoGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DemoGridViewModel>.reactive(
      viewModelBuilder: () => DemoGridViewModel(),
      builder: (
        BuildContext context,
        DemoGridViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(title: Text('Demo Grid View')),
          body: Center(
            child: Text(
              'DemoGridView',
            ),
          ),
        );
      },
    );
  }
}
