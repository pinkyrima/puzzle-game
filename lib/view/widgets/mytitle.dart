import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
   final dynamic size;
  const MyTitle({Key? key,this.size=10}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.10,
      padding: EdgeInsets.all(5.0),
      child: Text('Sliding Puzzle',style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size.height*0.05,
        color: Colors.white,
        decoration: TextDecoration.none
      ),),
    );
  }
}
