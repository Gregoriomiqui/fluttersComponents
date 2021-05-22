import 'dart:async';

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
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _agregar10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView y Scroll')),
      body: Stack(children: [
        _crearList(),
        _crearLoading(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _crearList() {
    return RefreshIndicator(
      onRefresh: _obtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumeros[index];

          return FadeInImage(
              placeholder: AssetImage('assets/cargando.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300/?image=$imagen'));
        },
      ),
    );
  }

  Future<void> _obtenerPagina1() async {

    setState(() {
    final duration = new Duration(seconds: 2);
      new Timer(duration, () {
        _listaNumeros.clear();
        _ultimoItem++;
        _agregar10();
      });
    });
  }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }

  Future _fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    new Timer(duration, _respuestaHTTP);
  }

  void _respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 300,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(milliseconds: 200),
    );

    _agregar10();
  }

  Widget _crearLoading() {
    return _isLoading
        ? Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.amber)),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 50))
            ],
          )
        : Container();
  }
}
