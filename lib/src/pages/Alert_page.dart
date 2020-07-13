import 'package:componentes/main.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert page')),
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            //viewbag = 0;
            mostraralert(context);
            print(' Pulso : $viewbag');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

void mostraralert(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Text('HOLA PRUEBA'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Divider(),
            Icon(
              Icons.accessibility_new,
              color: Colors.blue,
              size: 48,
            ),
            SizedBox(
              height: 10,
            ),
            Text('dhg fgdf agsdadskfhagjkdgad'),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              viewbag = 1;
              //Navigator.pop(context);
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
          FlatButton(
              onPressed: () {
                viewbag = 2;
                Navigator.of(context).pop();
              },
              child: Text('CANCELAR'))
        ],
      );
    },
  );
}
