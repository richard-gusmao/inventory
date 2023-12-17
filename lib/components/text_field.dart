import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String placeholder;
  final TextEditingController controllers;
  const InputField(
      {super.key, required this.placeholder, required this.controllers});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllers,
      style: const TextStyle(),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black,
        )),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: placeholder,
      ),
    );
  }
}
