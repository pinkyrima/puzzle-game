import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  int? secondsPassed;

  Time({Key? key, this.secondsPassed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              colors: [
                Colors.blueAccent.shade700,
                Colors.teal.withOpacity(0.4),
                Colors.blueAccent.shade700,
              ],
            ),
            borderRadius: BorderRadius.circular(40)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Time: ${secondsPassed}",
            style: const TextStyle(
                fontSize: 18,
                decoration: TextDecoration.none,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
