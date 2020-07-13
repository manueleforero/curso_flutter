import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _animated();
}

class _animated extends State<Animated> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  BorderRadiusGeometry _border = BorderRadius.circular(20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container animado'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _border,
          ),
          //child: Text('hola aa'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _cambiarff,
      ),
    );
  }

  void _cambiarff() {
    Random rr = Random();

    _width = rr.nextInt(300).toDouble();
    _height = rr.nextInt(300).toDouble();
    _border = BorderRadius.circular(rr.nextInt(100).toDouble());
    setState(() {});
  }
}
