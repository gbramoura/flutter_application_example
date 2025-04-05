import 'package:flutter/material.dart';

class HorizontalGridViewExample extends StatelessWidget {
  HorizontalGridViewExample({super.key});

  final itens = List.generate(30, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: itens.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(itens[index], style: TextStyle(fontSize: 16.0)),
            ),
          );
        },
      ),
      appBar: AppBar(
        title: Text('Vertical GridView Example'),
      ),
    );
  }
}
