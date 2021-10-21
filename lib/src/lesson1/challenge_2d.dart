import 'package:flutter/material.dart';

class Challenge2D extends StatelessWidget {
  const Challenge2D({Key? key}) : super(key: key);

  static const double sizedBoxWidthHeight = 10;

  @override
  Widget build(BuildContext context) {
    final safeAreaScreenWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    final safeBlockSizeHorizontal = safeAreaScreenWidth / 100;

    final squareSize = safeBlockSizeHorizontal * 50 - sizedBoxWidthHeight / 2;

    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: (Container(
                color: Colors.red,
                width: 100,
              )),
            ),
            const SizedBox(
              height: sizedBoxWidthHeight,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                color: Colors.lightBlue,
                width: squareSize,
                height: squareSize,
              ),
              const SizedBox(
                width: sizedBoxWidthHeight,
              ),
              Container(
                color: Colors.yellow,
                width: squareSize,
                height: squareSize,
              ),
            ]),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () => Navigator.pop(context),
          tooltip: 'Home',
          child: const Icon(Icons.home),
        ));
  }
}
