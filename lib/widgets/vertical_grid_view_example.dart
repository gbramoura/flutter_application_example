import 'package:flutter/material.dart';

class VerticalGridViewExample extends StatelessWidget {
  const VerticalGridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        shrinkWrap: true,
        children: List.generate(100, (index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text('Item $index', style: TextStyle(fontSize: 16.0)),
            ),
          );
        }),
      ),
      appBar: AppBar(
        title: Text('Vertical GridView Example'),
      ),
    );
  }
}
