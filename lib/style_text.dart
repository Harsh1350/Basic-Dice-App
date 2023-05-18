import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
   StyleText( this.text ,{key}) : super(key :key);

  final String text;
  @override
  Widget build(context) {
    return   Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ) ;
  }
}
