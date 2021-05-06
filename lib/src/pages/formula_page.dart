import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormulaPage extends StatefulWidget {
  @override
  _FormulaPageState createState() => _FormulaPageState();
}

class _FormulaPageState extends State<FormulaPage> {
 double a = 0;
 double b = 0;
 double c = 0;
 double resultado1 = 0;
 double resultado2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Container(
                  child: RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 40),
                ),
              )),
              Container(
                width: 200,
                child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade600)),
                        labelText: 'a',
                        labelStyle: TextStyle(color: Colors.grey.shade600)),
                    onChanged: (valor) {
                      setState(() {
                        a = double.parse(valor);
                      });
                    }),
              ),
              Container(
                width: 200,
                child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade600)),
                        labelText: 'b',
                        labelStyle: TextStyle(color: Colors.grey.shade600)),
                    onChanged: (valor) {
                      setState(() {
                        b = double.parse(valor);
                      });
                    }),
              ),
              Container(
                width: 200,
                child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade600)),
                        labelText: 'c',
                        labelStyle: TextStyle(color: Colors.grey.shade600)),
                    onChanged: (valor) {
                      setState(() {
                       c = double.parse(valor);
                      });
                    }),
              ),
              Container(
                  child: RichText(
                text: TextSpan(
                  text: '$resultado1' + ', ' + '$resultado2',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 40),
                ),
              )),
              CircleAvatar(
                backgroundColor: Color(0xfff8ac6d1),
                radius: 35,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                  onPressed: () {
                    _generarNombre();
                  },
                ),
              ),
               CircleAvatar(
                backgroundColor: Color(0xfff8ac6d1),
                radius: 35,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                  onPressed: () {
                    /* var route =
                        MaterialPageRoute(builder: (context) => MenuPage());
                    Navigator.push(context, route); */
                  },
                ),
              ),
            ])));
  }
   void _generarNombre() async {
     var x1 = 0.0;
     var x2 = 0.0;
     x1 = (-1)*((-1)*(b)+sqrt((b*b)-(4*a*c)))/(a*2);
     x2 = (-1)*((-1)*(b)-sqrt((b*b)-(4*a*c)))/(a*2);
     setState(() {
       resultado1 = x1;
       resultado2 = x2;
      });
   }
}
