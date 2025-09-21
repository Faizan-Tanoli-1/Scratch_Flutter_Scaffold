import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
        title: Text('Mr Fazi'),
      ),
      body: Center(child: Image(image: AssetImage('assets/fazi.jpeg',))
    ),
  )));
}
