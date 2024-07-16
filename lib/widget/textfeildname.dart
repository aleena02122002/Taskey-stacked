import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldName extends StatelessWidget {
  final TextEditingController nameController;

  TextFieldName({Key? key, TextEditingController? nameController})
      : nameController = nameController ?? TextEditingController(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26.0),
      child: SizedBox(
        width: 327,
        height: 60,
        child: TextFormField(
          controller: nameController,
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
