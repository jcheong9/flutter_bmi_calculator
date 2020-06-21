import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Icon roundButtonSymbol;
  final Function onPress;

  RoundIconButton({@required this.roundButtonSymbol,@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: roundButtonSymbol,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPress,
    );
  }
}