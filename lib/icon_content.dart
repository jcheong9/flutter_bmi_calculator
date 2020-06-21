import 'package:flutter/material.dart';
import 'constant.dart';


class IconContent extends StatelessWidget {
  String textGender;
  Icon genderSymbol;

  IconContent({@required this.textGender, @required this.genderSymbol});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        genderSymbol,
        SizedBox(
          height: 15,
        ),
        Text(
          textGender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
