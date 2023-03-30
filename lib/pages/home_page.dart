import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog"),
          centerTitle: true,
        ),
        body: Center(
          child: Material(
            child: Container(
            child: Text("Welcom to $days  days of flutter"),
          ),
        ),
      ),
    );
  }
}
