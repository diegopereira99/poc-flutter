import 'package:flutter/material.dart';
import 'package:teste23/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Teste123 extends StatefulWidget {
  @override
  _Teste123State createState() => _Teste123State();
}
class _Teste123State extends State<Teste123> {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}



