import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.deepOrange,
    
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Frases do Dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _numeroAleatorio = 0;
  List _frases = [
    'O importante não é vencer todos os dias, nas lutar sempre.',
    'É melhor conquistar a si mesmo do que vencer mil batalhas.',
    'O medo de perder tira a vontade de ganhar.',
    'Perder para a razão, sempre é ganhar!'
  ];

  void _incrementCounter() {
    setState(() {
    
    // Gera um número aleatorio até chagar no 4
    _numeroAleatorio = new  Random().nextInt(4);//0

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Precione o botão para gerar uma nova frase',
            ),
            Text(
              _frases [_numeroAleatorio], //irá exibir a primeira frase
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.access_alarms),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
