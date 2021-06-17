import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  const StackDemo({ Key? key }) : super(key: key);

  @override
  _StackDemoState createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Align(
            child: Container(
              color: Colors.amber,
              width: 100,
              height: 100
            ),
            alignment: Alignment.topLeft
          ),
          Positioned(child: Container(
              color: Colors.grey[400],
              width: 100, 
              height: 100
            ),
            left: 20,
            top: 20
          ),
          Align(
            child: Container(
              color: Colors.greenAccent,
              width: 100,
              height: 100
            ),
            alignment: Alignment.topCenter
          ),
          Align(
            child: Container(
              color: Colors.orange,
              width: 100,
              height: 100
            ),
            alignment: Alignment.topRight
          ),
          Align(
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100
            ),
            alignment: Alignment.bottomLeft
          ),
          Align(
            child: Container(
              color: Colors.blueAccent,
              width: 100,
              height: 100
            ),
            alignment: Alignment.bottomCenter
          ),
          Align(
            child: Container(
              color: Colors.yellowAccent,
              width: 100,
              height: 100
            ),
            alignment: Alignment.bottomRight
          ),
          Positioned(child: Container(
              color: Colors.blue[400],
              width: 100, 
              height: 100
            ),
            left: 40,
            top: 40
          ),
          Align(child: Container(
            color: Colors.cyanAccent,
            width: 100,
            height: 100
          ),
            alignment: Alignment.center,
          ),
          Positioned(
            child: Container(
              color: Colors.deepPurple,
              width: 100,
              height: 100
            ),
            top: 250,
            left: 80
          )
        ]
      )
    );
  }
}