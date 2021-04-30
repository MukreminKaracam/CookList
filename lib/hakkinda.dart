import 'package:flutter/material.dart';

class hakkinda extends StatefulWidget {
  @override
  _hakkindaState createState() => _hakkindaState();
}
class _hakkindaState extends State<hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hakkında',textScaleFactor: 1.5,
            style: TextStyle(fontWeight: FontWeight.w600)
                .apply(color: Colors.yellow)),
        flexibleSpace: Image(
          image: NetworkImage("https://images.pexels.com/photos/276514/pexels-photo-276514.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          fit:BoxFit.cover,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193311019 numaralı Mükremin Karaçam tarafından 30 Nisan 2021 günü yapılmıştır.',textScaleFactor: 1.5,
              style: TextStyle(fontWeight: FontWeight.bold)
                  .apply(color: Colors.teal[900])),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Anasayfaya Dön'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}