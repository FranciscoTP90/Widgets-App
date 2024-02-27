import 'package:flutter/material.dart';

const colors = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.orange,
  Colors.pink,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  })  : assert(selectedColor >= 0, 'Selected color mustbe greather than 0'),
        assert(selectedColor < colors.length,
            'Selected color mustbe less or equeals than ${colors.length - 1}');

  ThemeData getTheme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colors[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ));
  }
}
