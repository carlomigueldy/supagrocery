import 'package:flutter/material.dart';

class SupabaseLogo extends StatelessWidget {
  const SupabaseLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }
}
