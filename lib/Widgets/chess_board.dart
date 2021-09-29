import 'package:flutter/material.dart';

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.blue,
                  child: Image(
                    image: AssetImage(
                      "assets/blackbishop.png",
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
