import 'package:flutter/material.dart';
import '../constant.dart';
import 'package:flutterbmicalculator/screens/calculator_brain.dart';
import 'package:flutterbmicalculator/screens/result_page.dart';

class BottomButton extends StatelessWidget {
  final String textButton;
  final String navigateToRoute;
  final int height;
  final int weight;
  BottomButton({@required this.textButton,@required this.navigateToRoute, this.weight, this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(height != null && weight != null){
          CalculatorBrain cal = CalculatorBrain(height: height,weight:weight);
          Navigator.pushNamed(context, navigateToRoute,arguments: ResultPage(bmiResult: cal.calculateBMI(),resultText: cal.getResult(),interpretation: cal.getInterpretation()));
        }else{
          Navigator.pop(context);

        }
      },
      child: Container(
        child: Center(
          child: Text(textButton,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}