import 'package:flutter/material.dart';

class AppErrorText extends StatelessWidget {
  final String? text;

  const AppErrorText({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: TextStyle(color: Colors.red),
    );
  }
}
