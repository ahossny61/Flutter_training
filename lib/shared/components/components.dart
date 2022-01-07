import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 45.0,
  Color color = Colors.blue,
  required void Function() function,
  required String text,
  double radius = 0.0,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );

Widget defaultFormField({
  required String label,
  required TextEditingController controller,
  required TextInputType type,
  void Function(String value)? onSubmitFunc,
  void Function(String value)? onChangedFunc,
  required  String?Function(String ?value) onValidateFunc,
  required IconData prefixIcon,


}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
          labelText: label,
          //border: InputBorder.none
          border: OutlineInputBorder(),
          prefixIcon: Icon(prefixIcon)),
      onFieldSubmitted: onSubmitFunc,
      onChanged: onChangedFunc,
      style: TextStyle(fontSize: 20.0, color: Colors.blue),
      validator: onValidateFunc,
    );
