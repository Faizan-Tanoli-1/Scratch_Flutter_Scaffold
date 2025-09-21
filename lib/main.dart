import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade700,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue.shade100,
          title: Text('Fazi'),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Center(child: Text("container")),
          ),
        )
      ),
    );
  }
}
