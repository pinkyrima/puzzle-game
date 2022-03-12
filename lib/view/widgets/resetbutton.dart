import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback? reset;

  const ResetButton({Key? key, this.reset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: reset,
      child: const Text(
        "Reset",
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
