import 'package:flutter/material.dart';
import 'menu_page.dart';

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
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purple.shade200,
                Colors.blue.shade200,
                Colors.teal.shade200,
                Colors.orange.shade200,
              ],
            )),
            child: Stack(children: <Widget>[
              SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Center(
                          child: Column(children: [
                        SizedBox(height: 150),
                        Text(
                          'Bienvenid@',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        SizedBox(height: 10),
                        Container(
                            child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 50,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    labelText: 'Nombre',
                                    labelStyle: TextStyle(color: Colors.white)),
                                controller: _nombre,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                      Icons.calendar_today_rounded,
                                      color: Colors.white,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    labelText: 'Edad',
                                    labelStyle: TextStyle(color: Colors.white)),
                                controller: _edad,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                      Icons.place_rounded,
                                      color: Colors.white,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    labelText: 'Estado',
                                    labelStyle: TextStyle(color: Colors.white)),
                                controller: _estado,
                              ),
                            ],
                          ),
                        ))
                      ])))),
              Container(
                  alignment: Alignment(0.65, 0.85),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      color: Colors.grey,
                      iconSize: 40,
                      onPressed: () {
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new MenuPage(
                              nombre: _nombre.text,
                              edad: _edad.text,
                              estado: _estado.text),
                        );
                        Navigator.push(context, route);
                      },
                    ),
                  )),
              /* Container(
                  alignment: Alignment(0.0, 0.45),
                  child: SizedBox(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                        child: Text('Entrar'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.redAccent,
                          onPrimary: Colors.white,
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                          ),
                        ),
                        
                      ))) */
            ])));
  }
}