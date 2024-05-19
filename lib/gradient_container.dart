import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}): super(key: key); // expected by class StatelessWidget which we are inheriting from more verbose

  const GradientContainer(
      {super.key}); // expected by class StatelessWidget which we are inheriting from less verbose

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 169, 161, 181),
          Color.fromARGB(255, 146, 110, 208),
          Color.fromARGB(255, 72, 13, 174)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
