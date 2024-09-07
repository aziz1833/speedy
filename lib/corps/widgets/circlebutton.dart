import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Circlebutton extends StatelessWidget {
  final IconData icon ;
  final VoidCallback onPressed;
  const Circlebutton({Key?key, required this.icon,required this.onPressed}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration:const  BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(icon,
      color: Colors.white,
      )
    );
  }
}