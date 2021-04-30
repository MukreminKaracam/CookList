import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cooklist/Liste.dart';
import 'package:cooklist/hakkinda.dart';
import 'package:cooklist/TarifGezgini.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('    Anasayfa',textScaleFactor: 1.5,
            style: TextStyle(fontWeight: FontWeight.w600)
                .apply(color: Colors.yellow)),
        flexibleSpace: Image(
          image: NetworkImage("https://images.pexels.com/photos/276514/pexels-photo-276514.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          fit:BoxFit.cover,
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://images.pexels.com/photos/2208891/pexels-photo-2208891.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
              ),
                  fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/952478/pexels-photo-952478.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                              bottomRight: Radius.circular(36),
                              topLeft: Radius.circular(36),
                              topRight: Radius.circular(36),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("CookList",textScaleFactor: 3,
                                  style: TextStyle(fontWeight: FontWeight.bold)
                                      .apply(color: Colors.black)
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TarifGezgini()),
                    );
                  },
                  child: Text('Tarif Gezgini',textScaleFactor: 1.5,
                      style: TextStyle(fontWeight: FontWeight.w600)
                          .apply(color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Liste()),
                    );
                  },
                  child: Text('Yapılacaklar Listesi',textScaleFactor: 1.5,
                      style: TextStyle(fontWeight: FontWeight.w600)
                          .apply(color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => hakkinda()),
                    );
                  },
                  child: Text('Hakkında',textScaleFactor: 1.5,
                      style: TextStyle(fontWeight: FontWeight.w600)
                          .apply(color: Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
