import 'package:chessapp/screens/over_the_board.dart';
import 'package:chessapp/screens/playcomputerscreen.dart';
import 'package:flutter/material.dart';
import 'package:chessapp/Widgets/background_image.dart';

class HomeChessBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 480)
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NavigationButton(
                          "Over the Board", OverTheBoard.routeName),
                      SizedBox(
                        height: 37,
                      ),
                      NavigationButton(
                          "Play a Friend", PlayComputerScreen.routName),
                      SizedBox(
                        height: 37,
                      ),
                      NavigationButton(
                          "Play Computer", PlayComputerScreen.routName),
                    ],
                  ),
                );
              else
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UniversalNavigationButton(
                          "Over the Board", PlayComputerScreen.routName),
                      SizedBox(
                        height: 37,
                      ),
                      UniversalNavigationButton(
                          "Play a Friend", PlayComputerScreen.routName),
                      SizedBox(
                        height: 37,
                      ),
                      UniversalNavigationButton(
                          "Play Computer", PlayComputerScreen.routName),
                    ],
                  ),
                );
            },
          )
        ],
      ),
    );
  }
}

class NavigationButton extends StatefulWidget {
  final String buttontext;
  final String route;

  NavigationButton(this.buttontext, this.route);

  @override
  _NavigationButtonState createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.pushNamed(context, widget.route);
        });
      },
      child: Container(
        height: 52,
        width: 227,
        child: Center(
          child: Text(
            widget.buttontext,
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
      ),
    );
  }
}

class UniversalNavigationButton extends StatefulWidget {
  final String buttontext;
  final String route;

  UniversalNavigationButton(this.buttontext, this.route);

  @override
  _UniversalNavigationButtonState createState() =>
      _UniversalNavigationButtonState();
}

class _UniversalNavigationButtonState extends State<UniversalNavigationButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.pushNamed(context, widget.route);
        });
      },
      child: Container(
        height: 60,
        width: 350,
        child: Center(
          child: Text(
            widget.buttontext,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black54,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1),
          color: Colors.white70,
        ),
      ),
    );
  }
}
