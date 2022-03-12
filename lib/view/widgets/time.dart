import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  int? secondsPassed;

  Time({Key? key, this.secondsPassed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: Text(
        "Time: ${secondsPassed}",
        style: TextStyle(fontSize: 18, decoration: TextDecoration.none,color: Colors.white),
      ),
    );
  }
}
