import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final VoidCallback? click;
 String image;
 // int index;

  GridButton({Key? key, this.click, required this.image, }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: InkWell(
        onTap: click,
        child: Image.asset(image,fit: BoxFit.contain,),
       /* Text(
          text!,
          style: const TextStyle(
              fontSize: 30,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold),
        ),*/
        //style: ElevatedButton.styleFrom(primary: Colors.white),
      ),
    );
  }
}
