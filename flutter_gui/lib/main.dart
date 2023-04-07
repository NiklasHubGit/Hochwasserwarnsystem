import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final Color backgroundColor = const Color(0xFF041955);
  final Color foregroundColor = const Color(0xFF97b4ff);
  final Color secondaryColor = const Color(0xFF3450a1);
  final Color pinkColor = const Color(0xFFeb06ff);

  final Map<String, String> messstationenZahl = {
    "Ochsenhausen": "4",
    "Schwendi": "0",
    "Biberach": "0"
  };

  final Map<String, String> warnungen = {
    "Ochsenhausen": "keine Warnung",
    "Schwendi": "keine Warnung",
    "Biberach": "keine Warnung"
  };

  final String user = 'bob';
  final List<String> messorte = ['Ochsenhausen', 'Schwendi', 'Biberach'];

  final Map<String, String> werte = {
    'hw1 obere Rottum': '300',
    'hw2 untere Rottum': '200',
    'hw3 Krumbach': '400'
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 700,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Stack(
        children: [
          Container(),
          Row(
            children: [
              Container(
                width: 400,
                height: 700,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(35),
                ),
                padding: EdgeInsets.fromLTRB(20, 50, 20, 5),
                child: Column(
                  children: [
                    buildFirstPageContents(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFirstPageContents() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('Hallo $user',
              style: TextStyle(fontSize: 15, color: Colors.white)),
          // Text('heute ist der ${DateFormat('yMd').format(DateTime.now())}'),
          SizedBox(height: 10),
          buildMessorteCard(),
          SizedBox(height: 20),
          Text(
            "Messstationen",
            style: TextStyle(color: Colors.white),
          ),
          buildWerteListe(),
        ],
      ),
    );
  }

  Widget buildMessorteCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: messorte.map((messort) {
          return Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 130,
            width: 170,
            margin: EdgeInsets.symmetric(horizontal: 5),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(messort,
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                Text("Messstationen: ${messstationenZahl[messort]}",
                    style: TextStyle(color: Colors.white)),
                Text(
                  "${warnungen[messort]}",
                  style: TextStyle(color: Colors.green[600]),
                ),
                Container(
                  width: 160,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.12),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.only(right: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: pinkColor,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildWerteListe() {
    return Container(
      height: 400,
      child: ListView.builder(
        itemCount: werte.length,
        itemBuilder: (context, index) {
          String wert = werte.keys.elementAt(index);
          return Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 130,
            width: 270,
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(wert, style: TextStyle(fontSize: 18, color: Colors.white)),
                Text(
                  '${werte[wert]} mm bis zur Wasseroberfläche',
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => print('test'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
