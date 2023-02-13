// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      //home: new Text("Cool")
      home: MyStatelessWidget()));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold provide functionality of appbar, body of app etc
    return Scaffold(
        appBar: AppBar(title: Text("Stateless Widget")),
        body: new Container(
            //adding padding around card
            padding: const EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new MyCard(
                      title: new Text("Amo al profe cesar",
                          style: const TextStyle(fontSize: 20.0)),
                      icon: const Icon(Icons.favorite,
                          size: 40.0, color: Colors.redAccent)),
                  // ignore: prefer_const_constructors
                  MyCard(
                      title: Text("Amo la pizza",
                          style: const TextStyle(fontSize: 20.0)),
                      icon: const Icon(Icons.donut_large,
                          size: 40.0, color: Colors.brown)),
                  MyCard(
                      title: Text("Te veo prro",
                          style: const TextStyle(fontSize: 20.0)),
                      icon: const Icon(Icons.visibility,
                          size: 40.0, color: Colors.blue))
                ])));
  }
}

class MyCard extends StatelessWidget {
  //adding constructor
  // ignore: use_key_in_widget_constructors
  const MyCard({required this.title, required this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        //adding bottom padding on card
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Card(
            child: Container(
                //adding padding inside card
                padding: const EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  // new Text("I love Flutter"),
                  // new Icon(Icons.favorite)

                  title,
                  icon
                ]))));
  }
}
