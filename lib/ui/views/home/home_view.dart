import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_starter_template/styles/constants.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home View'),
            actions: [
              IconButton(
                icon: Icon(Icons.alternate_email),
                onPressed: model.toAboutView,
              ),
            ],
          ),
          floatingActionButton: _Fab(),
          body: _Body(model: model),
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  final HomeViewModel model;

  const _Body({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          _SectionHeading(model: model, label: 'Categories'),
          _CategorySlider(model: model),
          SizedBox(height: 30),
          _SectionHeading(model: model, label: 'Categories'),
          _CategorySlider(model: model),
          SizedBox(height: 30),
          _SectionHeading(model: model, label: 'Categories'),
          _CategorySlider(model: model),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}

class _CategorySlider extends StatelessWidget {
  final HomeViewModel model;

  const _CategorySlider({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsHelper.smallAll,
            child: _itemContainer(index),
          );
        },
      ),
    );
  }

  Widget _itemContainer(int index) {
    return GestureDetector(
      onTap: model.toSingleItemView,
      child: Container(
        width: 325,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadiusHelper.largeAll,
        ),
        child: Padding(
          padding: EdgeInsetsHelper.largeAll,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item $index',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.favorite_border),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeading extends StatelessWidget {
  final String label;
  final HomeViewModel model;

  const _SectionHeading({
    Key? key,
    required this.label,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsHelper.smallAll,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 32),
          ),
          MaterialButton(
            onPressed: model.toDemoListView,
            child: Text('See more'),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusHelper.extraSmallAll,
            ),
          )
        ],
      ),
    );
  }
}

class _Fab extends StatelessWidget {
  const _Fab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: Text('Click'),
    );
  }
}
