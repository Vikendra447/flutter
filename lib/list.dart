import 'package:flutter/material.dart';

void main(){
  runApp(ListApp());
}

class ListApp extends StatelessWidget {
  final products = List<String>.generate(500, (index) => "Products List: $index");
  ListApp({Key? key,}) : super(key: key);
  final appTitle = "List";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(choices.length, (index){
            return Center(
              child: SelectCard(choice:choices[index]),
            );
          }),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title,required this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Home', icon: Icons.home),
  Choice(title: 'Contact', icon: Icons.contacts),
  Choice(title: 'Map', icon: Icons.map),
  Choice(title: 'Phone', icon: Icons.phone),
  Choice(title: 'Camera', icon: Icons.camera_alt),
  Choice(title: 'Setting', icon: Icons.settings),
  Choice(title: 'Album', icon: Icons.photo_album),
  Choice(title: 'WiFi', icon: Icons.wifi),
  Choice(title: 'GPS', icon: Icons.gps_fixed),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key,required this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle=Theme.of(context).textTheme.displayMedium;
    return Card(
      color: Colors.lightGreenAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Icon(choice.icon,size: 50.0,color: textStyle?.color))
          ],
        ),
      ),
    );
  }
}
