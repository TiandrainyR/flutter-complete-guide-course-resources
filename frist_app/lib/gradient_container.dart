import 'package:flutter/material.dart';
import 'package:frist_app/dice_roller.dart';
//import 'package:frist_app/styled_text.dart';

var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startGradient, this.endGradient, {super.key});

  final Color startGradient;
  final Color endGradient;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startGradient, endGradient],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
