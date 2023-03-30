import 'package:flutter/material.dart';

void main(){
  runApp(MyAppClass());
}

class MyAppClass extends StatelessWidget {
  const MyAppClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget {
  const MyGridScreen({Key? key}) : super(key: key);

  @override
  State<MyGridScreen> createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: GridView.extent(
          primary: false,
            padding: EdgeInsets.all(16),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
          children: [
            Container(
            )
          ],
        ),
      ),
    );
  }
}

