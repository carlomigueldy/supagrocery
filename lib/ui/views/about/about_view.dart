import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'about_viewmodel.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AboutViewModel>.reactive(
      viewModelBuilder: () => AboutViewModel(),
      builder: (
        BuildContext context,
        AboutViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text('About View'),
          ),
          body: Center(
            child: Text(
              'AboutView',
            ),
          ),
        );
      },
    );
  }
}
