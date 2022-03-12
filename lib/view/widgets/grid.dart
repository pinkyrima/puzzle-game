import 'package:flutter/material.dart';

import 'grid_button.dart';

class Grid extends StatelessWidget {
  var numbers;
  //NIcher eta ki list?
  //haa ,,shurute list diclim pore var e niye gec ,,list ta onno kahne
  //Active list tay ektu edit kore

  var size;
  Function? clickGrid;

  Grid({Key? key,  this.numbers, this.size, this.clickGrid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = size.height;
    return Container(
      height: height * 0.60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5
            ),
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return numbers[index]!="0"? GridButton(image: numbers[index], click: () {
                clickGrid!(index);
              }, ):const SizedBox.shrink();
            }),
      ),
    );
    //ekhn dekhen//dekhso
    //hmm.. win er logic ta te error adhtece  oita dekhi

  }
}
