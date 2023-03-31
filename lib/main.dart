import 'package:flutter/material.dart';
import 'package:medical_center/screen/horizontal_table.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("История обращений",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: MyHomePage());
  }
}
