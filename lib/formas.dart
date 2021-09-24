import 'package:flutter/material.dart';

class Formas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.lightBlue,
        //borderRadius: BorderRadius.circular(1000),
      ),
      transform: Matrix4.rotationX(0.78),
      constraints: BoxConstraints(maxHeight: 400, maxWidth: 400),
    );
  }
}
