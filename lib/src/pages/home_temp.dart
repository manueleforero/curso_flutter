
///// este archivo NO se esta usando

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = <String>['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text('Componentes temporales'),
        ),
        body: ListView(
          children : _crearmini(),
        ),
      );
  }


  List<Widget> _crearmini() {

    var widgets = opciones.map((item) {

      return Column(
          children : [
          ListTile(
            title : Text(item),
            subtitle : Text('Subtitulo : ' + item),
            leading: Icon(Icons.adjust),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider(),
        ]
      );
    }).toList();

    return widgets;

  }


}