//mengimport package package yang diperlukan
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mahfuzh/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
//Membuat kelas Splashscrren, disini kita akan membuatnya menjadi statefullwidget
class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
  var duration = const Duration(seconds: 5);
  return Timer(duration, () {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MyHomePage()));
  });
  //Timer selama 5 second akan di tampilkan splashcreen, selanjutnya akan lanjut atau navigasi ke class MyHomePage yang ada di main.dart
}
@override
void initState() {
  super.initState();
  startSplashScreen();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 84, 51, 117),
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center(
        child: Image.asset(
          "assets/splash.png",
          width: 200.0,
          height: 100.0,
          fit: BoxFit.contain,
        ),
      ),
      SizedBox(
        height: 24.0,
      ),
      Text(
        "Ticket Store",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      ),
    ],
  ),
  );
  //Di splashscreen ini kita akan menampilkan bg dengan warna ungu dan dengan logo yang kita ambil dari assets kita yang sudah kita tambahkan ke pubspec.yaml dan menampilkan juga tulisan ticket store
 }
}
