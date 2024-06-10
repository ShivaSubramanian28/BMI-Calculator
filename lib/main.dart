import 'package:flutter/material.dart';
import 'package:bmicalculator/inputdata.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF0f0f1e)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Color(0xFF0f0f1e)),
        scaffoldBackgroundColor: Color(0xFF0f0f1e),
        textTheme: TextTheme(bodyMedium:TextStyle(color: Colors.red ),),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}




