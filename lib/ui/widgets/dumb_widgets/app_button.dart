import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final bool? loading;
  final bool? fullWidth;

  const AppButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.loading = false,
    this.fullWidth = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth! ? MediaQuery.of(context).size.width : null,
      child: MaterialButton(
        height: fullWidth! ? 50 : 40,
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
