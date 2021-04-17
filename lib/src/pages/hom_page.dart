import 'package:flutter/material.dart';
import 'package:flutters_components/src/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    menuProvider.cargarData();

    return ListView(
      children: _listaItems(),
    );
  }

 List<Widget> _listaItems() {
   return [
     ListTile( title: Text('hola mundo')),
     Divider(),
     ListTile( title: Text('hola mundo')),
     Divider(),
     ListTile( title: Text('hola mundo'))
   ];
 }
}
