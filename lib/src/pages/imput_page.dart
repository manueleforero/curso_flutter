import 'package:flutter/material.dart';

class Inputpp extends StatefulWidget {
  Inputpp({Key key}) : super(key: key);
  _Inputpp createState() => _Inputpp();
}

class _Inputpp extends State<Inputpp> {
  String _nombre;
  DateTime _fecha;
  String _poder;

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input text')),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          entrada(),
          Divider(),
          email(),
          Divider(),
          password(),
          Divider(),
          fecha(),
          Divider(),
          combobox(),
        ],
      ),
    );
  }

  Widget combobox() {
    List<String> lista = ['Volar', 'Mirada x', 'Fuerza', 'Aire'];
    _poder = lista[0];
    List<DropdownMenuItem<String>> opciones = [];
    lista.forEach((element) {
      opciones.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });

    return DropdownButton(
      value: _poder,
      items: opciones,
      onChanged: (valor) {
        setState(() {
          _poder = valor;
          print(_poder);
        });
      },
    );
  }

  Widget persona() {
    return ListTile(
      title: Text('Nombre : $_nombre'),
    );
  }

  Widget entrada() {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nombre',
        hintText: 'Digite nombre',
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget email() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Email',
        hintText: 'Correo electronico',
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget password() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Clave',
        hintText: 'Clave oculta',
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget fecha() {
    return TextFormField(
      enableInteractiveSelection: false,
      controller: _controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Fecha',
        hintText: 'Fecha de nacimiento',
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        calendario(context);
      },
    );
  }

  calendario(BuildContext context) async {
    DateTime ffecha;
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2021),
    ).then(
      (value) {
        _fecha = value;
        if (_fecha != null) _controller.text = _fecha.toString();
      },
    );
  }
}
