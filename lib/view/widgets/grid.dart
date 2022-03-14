import 'package:flutter/material.dart';

import 'grid_button.dart';

class Grid extends StatelessWidget {
  var numbers;

  var size;
  Function? clickGrid;

  Grid({Key? key, this.numbers, this.size, this.clickGrid}) : super(key: key);

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
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
            ),
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return numbers[index] != "0"
                  ? GridButton(
                      image: numbers[index],
                      click: () {
                        clickGrid!(index);
                      },
                    )
                  : SizedBox.shrink(
                      child: Container(
                        color: Colors.white,
                      ),
                    );
            }),
      ),
    );
  }
}
