import 'package:flutter/material.dart';
import 'screens/diagnosis_screen.dart';

void main() {
  runApp(CoffeeDiseaseApp());
}

class CoffeeDiseaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diagnóstico Café RMR',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: DiagnosisScreen(),
    );
  }
}
