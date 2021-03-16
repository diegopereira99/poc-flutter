import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:teste23/controllers/home_controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  
  HomeController controller = HomeController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (_) {
        return ListView(
          children: controller.clients.map((client) {
            return ListTile(
              onTap: () {
                controller.removeClient(client.name);
              },
              title: Text(client.name),
              subtitle: Text(client.age.toString()),
            );
        }).toList());
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getClients();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
