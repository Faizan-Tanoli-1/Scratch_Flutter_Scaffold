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
      body: Center(child: Image(image: NetworkImage('https://miro.medium.com/v2/0*s7of7kWnf9fDg4XM.jpeg',))
    ),
  )));
}
