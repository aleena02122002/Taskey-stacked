import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {

  const TextFields({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26.0),
      child: SizedBox(
        height: 60,
        width: 327,
        child: TextFormField(
            decoration: InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(color: Color(0xFF848A94)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                borderSide: BorderSide(color: Color(0xFF191D30)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
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
