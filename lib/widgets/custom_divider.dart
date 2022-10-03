import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  double? size = 20.0;

  CustomDivider({double? size}) {
    this.size = size;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: this.size ?? 20.0),
      child: const Divider(
        thickness: 1.0,
      ),
    );
  }
}
