import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card page'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            _createcard1(),
            SizedBox(height: 30),
            _createcard2(),
          ],
        ));
  }
}

Widget _createcard2() {
  final _card = Column(
    children: <Widget>[
      FadeInImage(
          height: 200,
          fit: BoxFit.cover,
          placeholder: AssetImage('assets/mef_bubles.gif'),
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/e/ef/Great_nature_landscape_Pakistan.jpg')),
      Container(
        padding: EdgeInsets.all(10),
        child: Text('Prueba de Foto ${DateTime.now().minute}'),
      ),
    ],
  );

  return Container(
    //elevation: 5,
    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black38,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(3, 3)),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: _card,
    ),
  );
}

Widget _createcard1() {
  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.movie, color: Colors.blue),
          title: Text('Titulo de tarjeta'),
          subtitle: Text(
              'jhd fahdsfhalsdjfhljfghlsjdfh glshfdgshdfl gshlkdfh gkljshfd glsjhfd lgshdglsdf k slfd g0'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text('Aceptar'),
              splashColor: Colors.blue,
            ),
            FlatButton(onPressed: () {}, child: Text('OK')),
            SizedBox(width: 10),
          ],
        ),
      ],
    ),
  );
}
