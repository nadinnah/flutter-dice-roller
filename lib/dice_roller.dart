import 'package:flutter/material.dart';
import 'dart:math';

final randomizer= Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  // var activeDiceRoll= 'images/dice-2.png';
  
  var currentDiceRoll= 2;
  void rollDice() {
    // var diceRoll=Random().nextInt(6)+1;
    setState(() { //re executes build
    currentDiceRoll=randomizer.nextInt(6)+1;
      // activeDiceRoll= 'images/dice-$diceRoll.png';
    });
    
  
  }

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed:
                  rollDice, // passed as a pointer func option 2     //() {}, /*anonymous function option 1*/
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
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