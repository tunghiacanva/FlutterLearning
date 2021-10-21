import 'package:flutter/material.dart';

class Challenge2C extends StatelessWidget {
  const Challenge2C({Key? key}) : super(key: key);

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

  List<Widget> _generateExpandedColumns(int columnNumber) {
    final columnList = <Widget>[];
    for (int i = 0; i < columnNumber; i++) {
      columnList.add(Expanded(
        flex: 1,
        child: Container(
          color: Colors.transparent,
          width: 100,
          height: 100,
        ),
      ));
      if (i < columnNumber - 1) {
        columnList.add(Container(
          width: 10,
          color: Colors.white,
        ));
      }
    }
    return columnList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Stack(fit: StackFit.expand, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [..._generateExpandedRows(10)],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [..._generateExpandedColumns(4)],
          )
        ]),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () => Navigator.pop(context),
          tooltip: 'Home',
          child: const Icon(Icons.home),
        ));
  }
}
