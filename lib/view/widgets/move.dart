import 'package:flutter/material.dart';

class Move extends StatelessWidget {
  int move;

  Move({Key? key, this.move = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0),
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
         // color: Colors.blueAccent.shade700,
              borderRadius: BorderRadius.circular(40)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Move: ${move}",
            style: TextStyle(
                color: Colors.white, decoration: TextDecoration.none, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
