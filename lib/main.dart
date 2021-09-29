import 'package:flutter/material.dart';
import 'package:chessapp/screens/homechessboardscreen.dart';
import 'package:chessapp/screens/playcomputerscreen.dart';
import 'package:chessapp/screens/over_the_board.dart';
import 'package:chessapp/Widgets/chess_board.dart';

void main() {
  runApp(ChessBoard());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeChessBoardScreen(),
      routes: {
        PlayComputerScreen.routName: (context) => PlayComputerScreen(),
        OverTheBoard.routeName: (context) => OverTheBoard(),
      },
    );
  }
}
