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
          primarySwatch: Colors.purple,
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
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 193, 115, 207),
                border: Border.all(
                    color: Color.fromARGB(255, 19, 17, 17), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: const [
                  Text('Ochsenhausen'),
                  Text('keine Warnung'),
                  Text('4 Messstationen'),
                ],
              )),
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 193, 115, 207),
                border: Border.all(
                    color: Color.fromARGB(255, 19, 17, 17), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: const [
                  Text('Ochsenhausen'),
                  Text('keine Warnung'),
                  Text('4 Messstationen'),
                ],
              ))
        ])));
  }
}
