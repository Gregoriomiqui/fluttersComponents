import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Card Page')),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1()
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }));
  }

  Widget _cardTipo1(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue),
            title: Text("Soy el titulo"),
            subtitle: Text("tarjeta de prueba con el curso de udemy"),
          ),
          Row(
            children: <Widget>[
              TextButton(onPressed: (){}, child: Text('Cancelar')),
              TextButton(onPressed: (){}, child: Text('Ok'))
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      )
    );
  }

}
