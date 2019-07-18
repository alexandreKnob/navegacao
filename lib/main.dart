import 'package:flutter/material.dart';
import 'auxiliar.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {

  String nome = retornaNome("Alexandre");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Column(
        children: <Widget>[
          Text("sdd"),
          Center(
            child: RaisedButton(
              child: Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute(nome)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {

  String recebeTexto;
  SecondRoute(this.recebeTexto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
           // Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstRoute()),
            );
          },
          child: Text(recebeTexto),
        ),
      ),
    );
  }
}