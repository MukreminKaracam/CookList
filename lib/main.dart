import 'package:flutter/material.dart';
import 'package:cooklist/AnaSayfa.dart';
import 'package:cooklist/TarifGezgini.dart';
import 'package:cooklist/hakkinda.dart';
import 'package:cooklist/Liste.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CookList",
      theme: ThemeData(
        primaryColor: Colors.teal,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.teal),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AnaSayfa(),
        '/tarifgezgini': (context) => TarifGezgini(),
        '/Liste': (context) => Liste(),
        '/hakkında': (context) => hakkinda(),
      },
    );
  }
}


