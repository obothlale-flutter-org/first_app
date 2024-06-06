import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
        ), // image has a constructor function called asset for convenience instead of providing and provider to Image class
        const SizedBox(
          height: 20,
        ), // alternative to adding space between image and button
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ), // adding space between image and button, but this deforms the buttons size - adding SizedBox would be better to add space between widgets
                foregroundColor: Colors
                    .red), // the foregroundColor gives an effect only onPressed (when the botton is pressed)
            child: const StyledText("Roll Dice"))
      ],
    ));
  }
}
