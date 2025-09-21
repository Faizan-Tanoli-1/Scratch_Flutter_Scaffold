import 'package:flutter/material.dart';
import 'package:hello_world/excel_upload.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.blue.shade700,
        appBar: AppBar(
          centerTitle: true,
          
          title: Text('Faizan Tanoli'),
          actions: [
           
          ],
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Center(child: Text("container 0")),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Center(child: Text("container 1")),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: Center(child: Text("container 2")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
