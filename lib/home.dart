import 'package:flutter/material.dart';
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
        child: ListView(
          children: [
            Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 30),
            ),
            CustomSwitch(),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                )
              ],
            ),
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
