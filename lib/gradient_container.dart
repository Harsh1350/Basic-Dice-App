import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dice_roller.dart';

//types of varirable
// type 1 var;
// type 2 final,const this is we cannot reasign the variable in future

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {key})
      : super(
            key:
                key); // this can be done like anaother way like GradientContainer({super.key}) ;

  GradientContainer.purple({key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

/*class GradientContainer extends StatelessWidget {
  const GradientContainer( this.colors,{key}): super(key:key); // this can be done like anaother way like GradientContainer({super.key}) ;
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child:  Center(
        child: StyleText('hello worl'),
      ),
    );
  }
}*/
