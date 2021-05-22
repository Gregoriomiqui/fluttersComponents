

import 'package:flutter/material.dart';




class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {


  List<int> _listaNumeros = [15,22,3,45,5];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView y Scroll')
      ),
      body: _crearList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _crearList() {

    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context , int index ) {

        final imagen = _listaNumeros[index];

        return FadeInImage(
          placeholder: AssetImage('assets/cargando.gif'),
          image: NetworkImage('https://picsum.photos/500/300/?image=$imagen')
        );
      },
    );

  }
}