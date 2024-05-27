import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Decouvrir.dart';
import 'Actuality.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrenceIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          title: [
            Text("Acceuil"),
            Text("Diversité"),
            Text("Actualité")
          ][_currentIndex],
        ),
        body:[
          HomePage(),
          DecouvPage(),
          ActuPage()
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:_currentIndex,
          onTap: (index) => setCurrenceIndex(index) ,
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Diversité",),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: "Actualité",)
          ],
        ),
      ),
    );
  }
}


