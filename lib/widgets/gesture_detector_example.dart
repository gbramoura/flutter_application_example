import 'package:flutter/material.dart';

class GestureDetectorExample extends StatelessWidget {
  
  const GestureDetectorExample({ super.key });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      child: Text('Texto usado para disparar evento (Click)'),
      onTap: () {},
    );
  }
}