import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      appBar: new AppBar(
        title: new Text("Next Page"),
      ),
      body: new Text("Bienvenido " + "${widget.nombre}" + " de edad " + "${widget.edad}" + " del estado de " + "${widget.estado}"),
    );
  }
}