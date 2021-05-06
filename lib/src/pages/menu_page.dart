import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'math_page.dart';
import 'name_page.dart';
import 'numbers_page.dart';

class MenuPage extends StatefulWidget {
  final String nombre;
  final String edad;
  final String estado;

  MenuPage({Key key, this.nombre, this.edad, this.estado}) : super(key: key);

  @override
  _MenuPageState createState() => new _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/menu.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.15), BlendMode.dstATop),
                  alignment: Alignment.center),
            ),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  Container(
                    child: new Text(
                      "Bienvenid@ " +
                          "${widget.nombre} \n" +
                          " Tienes " +
                          "${widget.edad} años \n " +
                          " Y eres del estado de " +
                          "${widget.estado}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment(0.0, 0.35),
                      child: SizedBox(
                          height: 40,
                          width: 210,
                          child: ElevatedButton(
                              child: Text('Fórmula cuadrática'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.yellow.shade800,
                                onPrimary: Colors.white,
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                var route = MaterialPageRoute(
                                    builder: (context) => MathPage());
                                Navigator.push(context, route);
                              }))),
                  Container(
                      alignment: Alignment(0.0, 0.45),
                      child: SizedBox(
                          height: 40,
                          width: 180,
                          child: ElevatedButton(
                              child: Text('Nombres Lokos'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent,
                                onPrimary: Colors.white,
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                var route = MaterialPageRoute(
                                    builder: (context) => NamePage());
                                Navigator.push(context, route);
                              }))),
                  Container(
                      alignment: Alignment(0.0, 0.45),
                      child: SizedBox(
                          height: 40,
                          width: 180,
                          child: ElevatedButton(
                              child: Text('Números lokos'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange,
                                onPrimary: Colors.white,
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                var route = MaterialPageRoute(
                                    builder: (context) => NumbersPage());
                                Navigator.push(context, route);
                              })))
                ]))));
  }
}
