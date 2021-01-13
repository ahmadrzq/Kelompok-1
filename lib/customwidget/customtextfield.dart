import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  bool issecured;

  CustomTextField({this.hint, this.issecured});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width * 0.90,
      child: TextFormField(
        obscureText: issecured,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(25),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(.3),
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20)),
      ),
    );
  }
}
