import 'package:flutter/material.dart';

class PaddingTwelvePixels extends StatelessWidget {
 final Widget child;

  const PaddingTwelvePixels({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(12.0),
      child: child
    );
  }
}