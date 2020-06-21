import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbmicalculator/components/reusable_card.dart';
import '../constant.dart';
import '../components/BottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult,this.resultText,this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'YOUR RESULT',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              colour: kActiveCarColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultBMITextStyle,
                  ),
                  Text(
                    'Normal BMI range: \n18.5 - 25 kg/m2',
                    textAlign: TextAlign.center,
                    style: kResultLabelTextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kResultLabelTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            textButton: 'RE-CALCULATE',
            navigateToRoute: '/',
          ),
        ],
      ),
    );
  }
}
