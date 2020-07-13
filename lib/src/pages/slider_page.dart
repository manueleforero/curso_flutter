import 'package:flutter/material.dart';

class Sliderp extends StatefulWidget {
  Sliderp({Key key}) : super(key: key);

  @override
  _SliderpState createState() => _SliderpState();
}

class _SliderpState extends State<Sliderp> {
  double _valor = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders...')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              label: 'Tamaño de la imagen',
              value: _valor,
              min: 50,
              max: 400,
              divisions: 100,
              onChanged: (valor) {
                setState(() {
                  _valor = valor;
                  print(valor.toInt());
                });
              },
            ),
            Text(_valor.toInt().toString()),
            AnimatedContainer(
              duration: Duration(milliseconds: 1),
              child: Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg'),
                width: _valor,
                height: _valor,
                fit: BoxFit.contain,
              ),
            ),
          ]),
    );
  }
}
