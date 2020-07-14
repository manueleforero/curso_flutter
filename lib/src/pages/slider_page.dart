import 'package:flutter/material.dart';

class Sliderp extends StatefulWidget {
  Sliderp({Key key}) : super(key: key);

  @override
  _SliderpState createState() => _SliderpState();
}

class _SliderpState extends State<Sliderp> {
  double _valor = 100;
  bool _micheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders...')),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(height: 40),
        Slider(
          label: 'Tamaño de la imagen',
          value: _valor,
          min: 50,
          max: 350,
          divisions: 100,
          onChanged: (!_micheck)
              ? null
              : (valor) {
                  setState(() {
                    _valor = valor;
                    print(valor.toInt());
                  });
                },
        ),
        Text(_valor.toInt().toString()),
        SwitchListTile(
          value: _micheck,
          title: Text('Bloquear Slider'),
          onChanged: (valor) {
            setState(() {
              _micheck = valor;
            });
          },
        ),
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
