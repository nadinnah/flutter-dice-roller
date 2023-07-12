import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  //defines function
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:  GradientContainer(
          Color.fromARGB(255, 30, 11, 63),
          Color.fromARGB(255, 45, 52, 130),
        ),
      ),
    ),
  );
}
