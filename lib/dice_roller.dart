import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({key}) : super(key: key);
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-2.png';
  var currentdiceroll = 2;
  void rollDice() {
    setState(() {
      currentdiceroll = Random().nextInt(6) + 1; // give between zero and 5
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdiceroll.png',
          width: 200,
        ),
        //SizedBox(height:20)     one another way of adding the space between image and button neeche padding jo haii same kam kar raha
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(
                5), //one way of padding(space lana) is this
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
