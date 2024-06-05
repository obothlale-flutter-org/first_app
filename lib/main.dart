import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart'; //or you can use import './gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 82, 66, 110),
          body: GradientContainer([
            Color.fromARGB(255, 201, 77, 77),
            Color.fromARGB(255, 110, 197, 208),
            Color.fromARGB(255, 72, 13, 174)
          ])),
    ),
  );
}
