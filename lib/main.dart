import 'package:componentes/src/pages/animated_page.dart';
import 'package:componentes/src/pages/Alert_page.dart';
import 'package:componentes/src/pages/Avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/imput_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'src/pages/home_page.dart';

void main() {
  //debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(MyApp());
}

int pb_rta;
int viewbag;
String prueba;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material app',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card': (BuildContext context) => CardPage(),
        'animatedContainer': (BuildContext context) => Animated(),
        'inputs': (BuildContext context) => Inputpp(),
        'slider': (BuildContext context) => Sliderp(),
      },
      onGenerateRoute: (RouteSettings mysettings) {
        print('toco aca $mysettings.name');
        return MaterialPageRoute(
          builder: (BuildContext context) => AvatarPage(),
          settings: mysettings,
        );
      },
    );
  }
}
