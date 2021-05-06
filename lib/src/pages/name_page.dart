import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_page.dart';

class NamePage extends StatefulWidget {
  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  String nombre = "";
  String nombreAlfa = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/3181113.jpg"),
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
                      child: RichText(
                    text: TextSpan(
                      text: 'Nombres por orden Alfabético',
                      style:
                          TextStyle(color: Colors.teal.shade600, fontSize: 40),
                    ),
                  )),
                  Container(
                    width: 250,
                    child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.text_fields_rounded,
                              color: Colors.teal,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade600)),
                            helperText: 'Escribe el nombre a ordenar',
                            helperStyle:
                                TextStyle(color: Colors.grey.shade900)),
                        onChanged: (valor) {
                          setState(() {
                            nombre = valor;
                            print(nombre);
                          });
                        }),
                  ),
                  Container(
                      child: RichText(
                    text: TextSpan(
                      text: '$nombreAlfa',
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 40),
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
                            child: Text('Ordenar'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.teal.shade600,
                              onPrimary: Colors.white,
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            onPressed: () {
                              _generarNombre(nombre);
                            }),
                      ]),
                ]))));
  }

  void _generarNombre(name) async {
    var list1 = List(name.length);
    var nombreAux = "";
    for (var i = 0; i < name.length; i++) {
      list1[i] = name[i];
    }
    list1.sort();
    for (var i = 0; i < name.length; i++) {
      nombreAux = nombreAux + list1[i];
    }
    setState(() {
      nombreAlfa = nombreAux;
    });
  }
}
