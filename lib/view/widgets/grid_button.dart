import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final VoidCallback? click;
  String image;

  // int index;

  GridButton({Key? key, this.click, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: click,
        child: Hero(
            tag: 'dash',
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            )),
        //style: ElevatedButton.styleFrom(primary: Colors.white),
      ),
    );
  }
}
