import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const RootPage(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

List standorte = [
  "Ochsenhausen",
  "Biberach",
  "Aulendorf",
];
Map messstationen = ({
  "Ochsenhausen": "4",
  "Biberach": "3",
  "Aulendorf": "2",
});
Map warnung = ({
  "Ochsenhausen": "keine Warnung",
  "Biberach": "keine Warnung",
  "Aulendorf": "keine Warnung",
});

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hochwasserwarnapp'),
        ),
        body: Center(
            // child: Text('Hello World'),
            child: Column(children: [
          for (var i = 0; i < 3; i++)
            Container(
                padding: const EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                width: 999999999999,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 34, 110, 197),
                  border: Border.all(
                      color: Color.fromARGB(255, 19, 17, 17), width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(standorte[i]),
                    Text("Messtationen " + (messstationen[standorte[i]])),
                    Text(warnung[standorte[i]]),
                  ],
                )),
        ])));
  }
}
