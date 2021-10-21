import 'package:flutter/material.dart';

class Challenge2A extends StatelessWidget {
  const Challenge2A({Key? key}) : super(key: key);

  List<Widget> _generateExpandedColumns(int columnNumber) {
    final columnList = <Widget>[];
    for (int i = 0; i < columnNumber; i++) {
      columnList.add(Expanded(
        flex: 1,
        child: Container(
          color: Colors.lightBlue,
          width: 100,
          height: 100,
        ),
      ));
      if (i < columnNumber - 1) {
        columnList.add(const SizedBox(
          width: 10,
        ));
      }
    }
    return columnList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [..._generateExpandedColumns(5)],
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () => Navigator.pop(context),
          tooltip: 'Home',
          child: const Icon(Icons.home),
        ));
  }
}
