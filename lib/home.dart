import 'package:flutter/material.dart';
import 'package:greengrocer/app_controller.dart';
import 'package:greengrocer/switch.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
        backgroundColor: Colors.blue, // Defina a cor desejada aqui
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 30),
            ),
            CustomSwitch(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            counter = counter + 3;
          });
        },
      ),
    );
  }
}
