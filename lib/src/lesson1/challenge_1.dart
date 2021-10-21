import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Challenge1 extends StatelessWidget {
  const Challenge1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safeAreaScreenWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    final safeAreaScreenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final safeBlockSizeHorizontal = safeAreaScreenWidth / 100;
    final safeBlockSizeVertical = safeAreaScreenHeight / 100;

    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Row(children: [
                                  Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                color: Colors.grey,
                                              )),
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                color: Colors.orange,
                                              )),
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                color: Colors.blue,
                                              )),
                                          Expanded(
                                              flex: 2,
                                              child: Container(
                                                color: Colors.pink,
                                              )),
                                        ],
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: Container(
                                                color: Colors.lightBlue,
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Row(children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                      color: Colors.green,
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                      color: Colors.yellow,
                                                    )),
                                              ])),
                                        ],
                                      )),
                                ])),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.black,
                                )),
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.yellow,
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.white,
                                ))
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.pink,
                        ))
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink,
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
          Positioned(
              top: safeAreaScreenHeight * 0.5,
              left: safeAreaScreenWidth * 0.15,
              child: Container(
                width: safeBlockSizeHorizontal * 25,
                height: safeBlockSizeVertical * 15,
                color: Colors.black.withOpacity(0.5),
              )),
        ])),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () => Navigator.pop(context),
          tooltip: 'Home',
          child: const Icon(Icons.home),
        ));
  }
}
