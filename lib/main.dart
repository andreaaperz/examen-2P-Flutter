import 'package:examen2p/src/pages/formula_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Final',
      debugShowCheckedModeBanner: false,
      home:FormulaPage()
    );
  }
}