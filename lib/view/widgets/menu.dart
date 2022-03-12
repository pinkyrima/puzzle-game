import 'package:flutter/material.dart';
import 'package:puzzle_game/view/widgets/time.dart';

import 'move.dart';
import 'resetbutton.dart';

class Menu extends StatelessWidget {
  final VoidCallback? reset;
  int move;
  int secondsPassed;
  var size;

  Menu({Key? key, this.reset, this.move = 0, this.secondsPassed = 0, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:size.height*0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        ResetButton(reset: reset),
        Move(move: move,),
        Time(secondsPassed: secondsPassed)
      ],),
    );
  }
}
