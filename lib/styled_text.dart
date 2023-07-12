import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key}); //this.text accepts and positional argument doesnt need required (by default are always required)
  
  final String text; //text here stores

  @override
  Widget build(context){
    return Text(
              text, // text here uses
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), 
                  fontSize: 28.0
                ),
            );
  }
}