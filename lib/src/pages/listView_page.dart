

import 'package:flutter/material.dart';




class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {


  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = [];
  int _ultimoItem = 0;


  @override
  void initState() {
    super.initState();

    _agregar10();
    _scrollController.addListener(() {
        
        if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent ){
          _agregar10();
        }
    });

  }



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
      controller: _scrollController,
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


  void _agregar10(){

    for (var i = 1; i<10; i++){
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState((){ });
  }
}