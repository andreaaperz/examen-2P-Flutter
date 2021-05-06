import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_page.dart';

class MathPage extends StatefulWidget {
  @override
  _FormulaPageState createState() => _FormulaPageState();
}

class _FormulaPageState extends State<MathPage> {
  double a = 0;
  double b = 0;
  double c = 0;
  double resultado1 = 0;
  double resultado2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/3208351.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstATop),
                  alignment: Alignment.center),
            ),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  
                  Container(
                      width: 315,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              'La fórmula cuadrática puede usarse para resolver cualquier ecuación de la forma ax2 + bx + c = 0. \n Primero tenemos que identificar los valores de a, b y c (los coeficientes) y posteriormente sustituirlos en la fórmula.',
                          style: TextStyle(
                              color: Colors.grey.shade900, fontSize: 17),
                        ),
                      )),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 100,
                          child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade600)),
                                  labelText: 'a',
                                  labelStyle:
                                      TextStyle(color: Colors.grey.shade800)),
                              onChanged: (valor) {
                                setState(() {
                                  a = double.parse(valor);
                                });
                              }),
                        ),
                        Container(
                          width: 100,
                          child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade600)),
                                  labelText: 'b',
                                  labelStyle:
                                      TextStyle(color: Colors.grey.shade800)),
                              onChanged: (valor) {
                                setState(() {
                                  b = double.parse(valor);
                                });
                              }),
                        ),
                      ]),
                  Container(
                    width: 100,
                    child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade600)),
                            labelText: 'c',
                            labelStyle: TextStyle(color: Colors.grey.shade800)),
                        onChanged: (valor) {
                          setState(() {
                            c = double.parse(valor);
                          });
                        }),
                  ),
                  Container(
                      child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '$resultado1' + ', ' + '$resultado2',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 20,
                      ),
                    ),
                  )),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Positioned(
                          bottom: 135,
                          right: 30,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.grey.shade700,
                            onPressed: () {
                              var route = MaterialPageRoute(
                                  builder: (context) => MenuPage());
                              Navigator.push(context, route);
                            },
                          ),
                        ),
                        ElevatedButton(
                            child: Text('Calcular'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.amber.shade700,
                              onPrimary: Colors.white,
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: () {
                              _generarNombre();
                            }),
                      ]),
                ]))));
  }

  void _generarNombre() async {
    var x1 = 0.0;
    var x2 = 0.0;
    x1 = (-1) * ((-1) * (b) + sqrt((b * b) - (4 * a * c))) / (a * 2);
    x2 = (-1) * ((-1) * (b) - sqrt((b * b) - (4 * a * c))) / (a * 2);
    setState(() {
      resultado1 = x1;
      resultado2 = x2;
    });
  }
}
