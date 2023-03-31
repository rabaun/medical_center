import 'package:flutter/material.dart';
import 'package:medical_center/screen/horizontal_table.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'История обращений',),
          backgroundColor: Colors.green,
        ),
        body: MyHomePage());
  }
}
