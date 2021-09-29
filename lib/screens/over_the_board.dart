import 'package:flutter/material.dart';
import 'package:chessapp/Widgets/background_image.dart';

class OverTheBoard extends StatelessWidget {
  static const String routeName = "over_the_board";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                // Container(
                //   padding: EdgeInsets.all(5.0),
                //   child: Row(
                //     children: [
                //       Container(),
                //       Container(),
                //     ],
                //   ),
                // ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(
                //   padding:
                //       EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Container(
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.all(
                //             Radius.circular(15),
                //           ),
                //           color: Colors.red,
                //         ),
                //       ),
                //       Container(),
                //     ],
                //   ),
                // ),
                AspectRatio(
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 8,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(64, (index) {
                      return Builder(builder: (context) {
                        return Scaffold(
                          backgroundColor:
                              index % 2 == 1 ? Colors.grey : Colors.white,
                          body: Text('${index + 1}'),
                        );
                      });
                    }),
                  ),
                  aspectRatio: 1,
                ),
              ],
            ),
            Column(
              children: [
                Container(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
