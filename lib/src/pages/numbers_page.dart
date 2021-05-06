import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_page.dart';

class NumbersPage extends StatefulWidget {
  @override
  _MathPageState createState() => _MathPageState();
}

class _MathPageState extends State<NumbersPage> {
  int num1 = 0;
  int num2 = 0;
  int numRandom = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/math.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstATop),
                  alignment: Alignment.center),
            ),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
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
                        Container(
                            width: 280,
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text:
                                    'El concepto de número aleatorio refiere a la probabilidad que tiene un numero de ser elegido sobre un rango determinado de números. Estos cumplen la función de representar matemáticamente la realidad.',
                                style: TextStyle(
                                    color: Colors.grey.shade900, fontSize: 17),
                              ),
                            )),]),
                        CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.teal.shade400,
                            child: RichText(
                              text: TextSpan(
                                text: '$numRandom',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ),
                            )),
                        Container(
                          width: 200,
                          child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  labelText: 'Digita el primer número',
                                  labelStyle: TextStyle(color: Colors.black)),
                              onChanged: (valor) {
                                setState(() {
                                  num2 = int.parse(valor);
                                  print(num1);
                                });
                                _generarNumero();
                              }),
                        ),
                        Container(
                          width: 200,
                          child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  labelText: 'Digita el segundo número',
                                  labelStyle: TextStyle(color: Colors.black)),
                              onChanged: (valor) {
                                setState(() {
                                  num1 = int.parse(valor);
                                  print(num1);
                                });
                                _generarNumero();
                              }),
                        ),
                      
                ]))));
  }

  void _generarNumero() async {
    final random = Random();
    setState(() {
      numRandom = num1 + random.nextInt(num2 - num1);
    });
  }
}