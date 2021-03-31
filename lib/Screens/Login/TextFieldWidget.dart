import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureData;
  final Function onChange;

  TextFieldWidget({

    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    this.obscureData,
    this.onChange
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      style: TextStyle(
          color: Color(0xFFFF6B01),
          fontSize: 14.0
      ),
      cursorColor: Color(0xFFFF6B01),
      decoration: InputDecoration(
          labelText: hintText,
          prefixIcon: Icon(
              prefixIconData,
              size: 18,
              color: Color(0xFFFF6B01)
          ),
          filled: true,
          enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFFFF6B01))
          ),
          suffixIcon: Icon(
            suffixIconData,
            size: 18,
            color: Color(0xFFFF6B01),
          ),
          labelStyle: TextStyle(color: Color(0xFFFF6B01)),
          focusColor: Color(0xFFFF6B01)
      ),
    );
  }
}