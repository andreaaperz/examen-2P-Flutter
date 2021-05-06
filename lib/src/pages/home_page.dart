import 'package:flutter/material.dart';
import './menu_page.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  var _nombre = new TextEditingController();
  var _edad = new TextEditingController();
  var _estado = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(children: <Widget>[
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Center(
              child: Column(children: [
            SizedBox(height: 150),
            Text(
              'Bienvenid@',
              style: TextStyle(color: Colors.grey.shade700, fontSize: 40),
            ),
            SizedBox(height: 50),
            Container(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade600)),
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.grey.shade600)),
                    controller: _nombre,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade600)),
                        labelText: 'Gender',
                        labelStyle: TextStyle(color: Colors.grey.shade600)),
                        controller: _edad,
                  ),
                  
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade600)),
                        labelText: 'Age',
                        labelStyle: TextStyle(color: Colors.grey.shade600)),
                        controller: _estado,
                  ),
                ],
              ),
            ))
          ]))),
      Container(
        alignment: Alignment(0.8, 0.9),
        child: CircleAvatar(
          backgroundColor: Color(0xfff8ac6d1),
          radius: 35,
          child: IconButton(
            icon: Icon(Icons.arrow_forward),
            color: Colors.white,
            onPressed: () {
              var route = new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new MenuPage(nombre: _nombre.text, edad: _edad.text, estado: _estado.text),
                );
              Navigator.push(context, route);
            },
          ),
        ),
      )
    ])));
  }
}

