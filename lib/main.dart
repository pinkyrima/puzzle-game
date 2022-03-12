import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puzzle_game/view/board.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const SlidingPuzzle());
}



class SlidingPuzzle extends StatelessWidget {
  const SlidingPuzzle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pinki\'s Sliding Puzzle',
      debugShowCheckedModeBanner: false,
      home: Board(),
    );
  }
}