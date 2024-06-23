import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;
  AppTheme({this.isDarkMode = false, this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color index must be less than 0.'),
        assert(selectedColor < colorList.length,
            'Selected color index must be less than ${colorList.length - 1}.');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
      );

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode,
  }) =>
      AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );
}
