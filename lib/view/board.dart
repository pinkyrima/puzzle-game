import 'dart:async';

import 'package:flutter/material.dart';
import 'package:puzzle_game/view/widgets/grid.dart';
import 'package:puzzle_game/view/widgets/menu.dart';
import 'package:puzzle_game/view/widgets/mytitle.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  //var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  //ekhn dekhen ///ei errror ta sesra
  var numbers = [
    "0",
    'assets/images/image001.png',
    'assets/images/image002.png',
    'assets/images/image003.png',
    'assets/images/image004.png',
    'assets/images/image005.png',
    'assets/images/image006.png',
    'assets/images/image007.png',
    'assets/images/image008.png',
    'assets/images/image009.png',
    'assets/images/image010.png',
    'assets/images/image011.png',
    'assets/images/image012.png',
    'assets/images/image013.png',
    'assets/images/image014.png',
    'assets/images/image015.png',
  ];

  // 'assets/images/image016.png',
  int move = 0;
  int secondsPassed = 0;
  Timer? timer;
  static const duration = Duration(seconds: 1);
  bool isActive = false;

  @override
  void initState() {
    super.initState();
    numbers.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    timer ??= Timer.periodic(duration, (t) {
      startTime();
    });
    return SafeArea(
        child: Container(
      height: size.height,
      color: Colors.blue,
      child: Column(
        children: [
          MyTitle(
            size: size,
          ),
          Grid(
            numbers: numbers,
            size: size,
            clickGrid: clickGrid,
          ),
          Menu(
            reset: reset,
            move: move,
            secondsPassed: secondsPassed,
            size: size,
          )
        ],
      ),
    ));
  }

  void clickGrid(index) {
    print(index.toString());
    if (secondsPassed == 0) {
      isActive = true;
    }
    if (index - 1 >= 0 &&
            numbers.indexOf(numbers[index - 1]) ==
                numbers.indexOf(numbers.first) &&
            index % 4 != 0 ||
        index + 1 < 16 &&
            numbers.indexOf(numbers[index + 1]) ==
                numbers.indexOf(numbers.first) &&
            (index + 1) % 4 != 0 ||
        (index - 4 >= 0 &&
                numbers.indexOf(numbers[index - 4]) ==
                    numbers.indexOf(numbers.first) ||
            (index + 4 < 16 &&
                numbers.indexOf(numbers[index + 4]) ==
                    numbers.indexOf(numbers.first)))) {
      setState(() {
        // numbers[numbers.indexOf(0)] = numbers[index];
        // numbers[index] = 0;
        numbers[numbers.indexOf("0")] = numbers[index];
        numbers[index] = "0";
        move++;
      });
    }

    checkWin();
  }

  void reset() {
    setState(() {
      numbers.shuffle();
      move = 0;
      secondsPassed = 0;
      isActive = false;
    });
  }

  void startTime() {
    if (isActive) {
      setState(() {
        secondsPassed += 1;
      });
    }
  }

  //ekhanei change korar ase..aage number diye sort hoto..but image e number nai.. List ta map use korle valo hoto
  bool isSorted(List list) {
    //TODO: check sub string getting only numbers
    // 'assets/images/image001.png'
    var prev = list.first;
    int prevInt = 0;
    if (!prev.toString().startsWith("0")) {
      prevInt = int.parse(prev.toString().split("/").last.substring(5, 8));
    }
    setState(() {});
    //TODO: remove after check
    print(prevInt);
    for (var i = 1; i < list.length - 1; i++) {
      var next = list[i];
      int nextInt = 0;
      if (!next.toString().startsWith("0")) {
        nextInt = int.parse(next.toString().split("/").last.substring(5, 8));
      }

      setState(() {});
      //TODO: remove after check
      print(prevInt);

      if (prevInt > nextInt) return false;
      prev = next;
      setState(() {});
    }
    return true;
  }

  void checkWin() {
    if (isSorted(numbers)) {
      isActive = false;
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                height: 200,
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Great You Win!!!',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 220,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Close',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    }
  }
}
