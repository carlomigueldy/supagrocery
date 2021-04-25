import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final bool? loading;

  const AppButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
        height: 50,
        onPressed: onPressed,
        child: loading!
            ? Center(
                child: CircularProgressIndicator(),
              )
            : _text(),
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        elevation: 0,
      ),
    );
  }

  Text _text() {
    return Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
