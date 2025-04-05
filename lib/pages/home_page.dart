import 'package:flutter/material.dart';
import 'package:flutter_application_example/widgets/gesture_detector_example.dart';
import 'package:flutter_application_example/widgets/horizontal_grid_view_example.dart';
import 'package:flutter_application_example/widgets/vertical_grid_view_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetectorExample(),
            SizedBox(height: 50),
            TextButton(
              child: Text('Grid View Vertical Example'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerticalGridViewExample(),
                  ),
                );
              },
            ),
            SizedBox(height: 50),
            TextButton(
              child: Text('Grid View Horizontal Example'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HorizontalGridViewExample(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
