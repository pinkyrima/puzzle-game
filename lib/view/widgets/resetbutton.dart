import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback? reset;

  const ResetButton({Key? key, this.reset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: reset,
        child: const Text(
          "Reset",
         style: TextStyle(color: Colors.pink,fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.deepOrange,
            primary: Colors.yellow,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      ),
    );
  }
}
