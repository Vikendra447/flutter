import 'package:flutter/material.dart';

void main(){
  runApp(ListHapp());
}

class ListHapp extends StatelessWidget {
  const ListHapp({Key? key}) : super(key: key);
  final title="Horizontal List";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 25.0),
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 150.0,
                color: Colors.blue,
                child: Stack(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    )
                  ],
                ),
              ),

              Container(
                width: 148.0,
                color: Colors.green,
                child: Stack(
                  children: [
                    ListTile(
                      leading: Icon(Icons.camera),
                      title: Text("Camra"),
                    )
                  ],
                ),
              ),

              Container(
                width: 148.0,
                color: Colors.yellow,
                child: Stack(
                  children: [
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Phone"),
                    )
                  ],
                ),
              ),

              Container(
                width: 148.0,
                color: Colors.red,
                child: Stack(
                  children: [
                    ListTile(
                      leading: Icon(Icons.map),
                      title: Text("Map"),
                    )
                  ],
                ),
              ),

              Container(
                width: 180.0,
                color: Colors.blue,
                child: Stack(
                  children: [
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
