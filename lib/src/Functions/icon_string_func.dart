

import 'package:flutter/material.dart';

Icon get_icon(String viewbag) {

  //print(' icono : $viewbag' );

  final tmp = <String,IconData>{
    'add_alert' :  Icons.add_alert ,
    'accessibility' : Icons.accessibility,
    'folder_open' : Icons.folder_open,
    'donut_large' : Icons.donut_large,
    'input' : Icons.input,
    'tune' : Icons.tune,
    'list' : Icons.list,
  };

  return Icon( tmp[viewbag]  ) ;

}

