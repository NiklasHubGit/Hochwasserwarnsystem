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
          primarySwatch: Colors.red,
        ));
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

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
          Column(
            children: const [
              Text('Ochsenhausen'),
              Text('keine Warnung'),
              Text('4 Messstationen'),
            ],
          )
        ])));
  }
}
