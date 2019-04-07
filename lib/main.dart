import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: "/burcListesi",

      routes: {
        "/": (context) => BurcListesi(),
        "/burcListesi": (context) => BurcListesi(),
      },

      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/"); // /burcDetay/1
        if (pathElemanlari[1] == "burcDetay") {
          return MaterialPageRoute(
              builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
      },

      title: "Burç Rehberi",
      // home: BurcListesi(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
