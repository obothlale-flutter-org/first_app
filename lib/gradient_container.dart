import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
Alignment? variable1;

class GradientContainer extends StatelessWidget {
  //GradientContainer({key}): super(key: key); // expected by class StatelessWidget which we are inheriting from more verbose

  /* Alternatively use named arguments instead of positional but you have to use "required" since by default they are optional
    const GradientContainer({super.key, required this.linearGradientColors});
  */

  const GradientContainer(this.linearGradientColors,
      {super.key}); // expected by class StatelessWidget which we are inheriting from less verbose

  final List<Color> linearGradientColors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: linearGradientColors,
              begin: startAlignment,
              end: endAlignment),
        ),
        child: const DiceRoller());
  }
}
