import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MathPage extends StatefulWidget {
  @override
  _MathPageState createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
 int num1 = 0;
 int num2 = 0;
 int numRandom = 0;
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
                        labelText: 'Num1',
                        labelStyle: TextStyle(color: Colors.grey.shade600)),
                    onChanged: (valor) {
                      setState(() {
                        num1 = int.parse(valor);
                        print(num1);
                      });
                      _generarNumero();
                    }),
              ),
              Container(
                  child: RichText(
                text: TextSpan(
                  text: '$numRandom',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 40),
                ),
              )),
              Container(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600)),
                      labelText: 'Num2',
                      labelStyle: TextStyle(color: Colors.grey.shade600)),
                      onChanged: (valor) {
                      setState(() {
                        num2 = int.parse(valor);
                        print(num1);
                      });
                      _generarNumero();
                      }
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
   void _generarNumero() async {
    final random = Random();
    setState(() {
        numRandom = num1 + random.nextInt(num2 - num1);
      });
  }
}
