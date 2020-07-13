

import 'package:componentes/src/Functions/icon_string_func.dart';

import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

import 'package:componentes/src/pages/Alert_page.dart';


class HomePage extends StatelessWidget {

  @override 
  Widget build( BuildContext context ){
    return Scaffold(
      appBar: AppBar( 
          title: Text('Componentes .. list'),
        ),
      body: _lista(context),
    );
  }

  Widget _lista(BuildContext context){

    //final viewbag = this._listaitem();

    return FutureBuilder(
      future: menuprovider.cargardata(),
      initialData: [],
      builder : (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        //print('builder');
        //print(snapshot.data);
        return ListView( children : _listaitem(snapshot.data, context));
      },
    );

  }

  List<Widget> _listaitem( jsondata, BuildContext context) {
 
    final List<Widget> milista = [];

    jsondata.forEach ( (opcion) {

        //print( opcion ['icon']);

/*        final miruta = new MaterialPageRoute(
            builder: (context) => AlertPage(),
        );  */

        final widgetbag = ListTile(
          title : Text( opcion['texto'] ),
          leading : get_icon( opcion['icon'] ) ,
          trailing : Icon(Icons.keyboard_arrow_right, color : Colors.blue ) ,
          onTap: (){
              Navigator.pushNamed(context, opcion['ruta']);
//              Navigator.push( context, miruta) ;             
          },
        );

        milista..add(widgetbag)..add(Divider());

    } );

    return milista;

  }

}

