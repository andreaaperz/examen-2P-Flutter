
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                        nombre = valor;
                        print(nombre);
                      });
                    }),
              ),
              Container(
                  child: RichText(
                text: TextSpan(
                  text: '$nombreAlfa',
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
                    _generarNombre(nombre);
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
   void _generarNombre(name) async {
     var list1 = List(name.length);
     var nombreAux = "";
      for (var i = 0; i < name.length; i++){
       list1[i] = name[i];
     }
     list1.sort();
     for (var i = 0; i < name.length; i++){
       nombreAux = nombreAux + list1[i];
     }
     setState(() {
       nombreAlfa = nombreAux;
      });
   }
}
