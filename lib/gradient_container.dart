import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
Alignment? variable1;

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}): super(key: key); // expected by class StatelessWidget which we are inheriting from more verbose

  const GradientContainer(
      {super.key}); // expected by class StatelessWidget which we are inheriting from less verbose

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: const [
          Color.fromARGB(255, 169, 161, 181),
          Color.fromARGB(255, 146, 110, 208),
          Color.fromARGB(255, 72, 13, 174)
        ], begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
