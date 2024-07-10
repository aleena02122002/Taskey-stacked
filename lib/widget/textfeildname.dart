import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldName extends StatelessWidget {

  const TextFieldName({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26.0),
      child: SizedBox(
        width: 327,
        height: 60,
        child: TextFormField(
          decoration: const InputDecoration(
            hintText: "Name",
            hintStyle: TextStyle(color: Color(0xFF848A94)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: Color(0xFF191D30)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(
                color: Color(0xFF3580FF),
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}