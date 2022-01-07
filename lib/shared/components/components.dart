
import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  double height=45.0,
  Color color=Colors.blue,
  required  void Function() function,
  required String text,
  double radius=0.0,

})=> Container(
  width: width,
  height: height,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
  ),
  child: MaterialButton(
    onPressed:function,
    child: Text(
      text.toUpperCase(),
    ),
    ),
);