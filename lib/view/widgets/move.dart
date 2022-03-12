import 'package:flutter/material.dart';

class Move extends StatelessWidget {
  int move;

  Move({Key? key, this.move = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Text(
        "Move: ${move}",
        style: TextStyle(
            color: Colors.white, decoration: TextDecoration.none, fontSize: 18),
      ),
    );
  }
}
