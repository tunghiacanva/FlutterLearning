import 'package:flutter/material.dart';

class Challenge2B extends StatelessWidget {
  const Challenge2B({Key? key}) : super(key: key);

  List<Widget> _generateExpandedRows(int rowNumber) {
    final columnList = <Widget>[];
    for (int i = 0; i < rowNumber; i++) {
      columnList.add(Expanded(
        flex: 1,
        child: Container(
          color: Colors.lightBlue,
          width: 100,
          height: 100,
        ),
      ));
      if (i < rowNumber - 1) {
        columnList.add(const SizedBox(
          height: 10,
        ));
      }
    }
    return columnList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [..._generateExpandedRows(5)],
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () => Navigator.pop(context),
          tooltip: 'Home',
          child: const Icon(Icons.home),
        ));
  }
}
