
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _MenuProvider {

  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargardata();
  }

  Future <List<dynamic>> cargardata() async {

      final respta = await rootBundle.loadString('data/menu_opts.json');
      Map datamap = json.decode(respta);
      //print(datamap);

      opciones = datamap['rutas'];

      //print('Resultado : $opciones ');
      return opciones;
 
  }

}

final menuprovider = new _MenuProvider();

 