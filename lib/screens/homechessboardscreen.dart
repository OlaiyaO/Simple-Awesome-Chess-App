import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeChessBoardScreen extends StatelessWidget {
  const HomeChessBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.dstATop),
                image: AssetImage(
                  "assets/chessbackgroundimage.jpg",
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NavigationButton(52, 227, "Over the Board"),
                SizedBox(
                  height: 37,
                ),
                NavigationButton(52, 227, "Play a Friend"),
                SizedBox(
                  height: 37,
                ),
                NavigationButton(52, 227, "Play Computer"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  final double buttonheight;
  final double buttonwidth;
  final String buttontext;

  NavigationButton(this.buttonheight, this.buttonwidth, this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonheight,
      width: buttonwidth,
      child: Center(
        child: Text(
          buttontext,
          style: TextStyle(
            fontSize: 24,
            color: Colors.black54,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1),
        color: Colors.white70,
      ),
    );
  }
}
