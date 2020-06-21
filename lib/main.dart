import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF090D22),
          scaffoldBackgroundColor: Color(0xFF090D22),
      ),
      initialRoute: '/',
      onGenerateRoute: _getRoute,
      routes: {
        '/': (context) =>InputPage(),
      },
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  if (settings.name == '/result') {
    // FooRoute constructor expects SomeObject
    return _buildRoute(
        settings,
        settings.arguments);
  }

  return null;
}
MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
  return new MaterialPageRoute(
    settings: settings,
    builder: (ctx) => builder,
  );
}

