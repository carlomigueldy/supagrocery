import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_starter_template/ui/views/demo_list/demo_list_viewmodel.dart';

class DemoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DemoListViewModel>.reactive(
      viewModelBuilder: () => DemoListViewModel(),
      builder: (
        BuildContext context,
        DemoListViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(title: Text('Demo List View')),
          body: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: Colors.grey[100],
                leading: CircleAvatar(radius: 30),
                title: Text('$index'),
                subtitle: Text('Awesome'),
                isThreeLine: true,
                trailing: IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 10);
            },
          ),
        );
      },
    );
  }
}
