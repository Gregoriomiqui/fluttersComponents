import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Card Page')),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
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
            leading: Icon( Icons.photo_album, color: Colors.blue ),
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
      ),
      elevation: 10.0,
      shadowColor: Colors.blue,
    );
  }

  Widget _cardTipo2(){
    return Card( 
        child: Column(
          children: <Widget>[
            FadeInImage(
              height: 250.0,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 200 ),
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://adwallpapers.xyz/uploads/posts/71162-autumn-lake-landscape-wallpaper-4k-ultra-hd-wallpaper__nature.jpg'),
            ),
            Container(
              child: Text('esto es un texto de prueba'),
              padding: EdgeInsets.all(10.0)
            )
          ],
        ),
        elevation: 10.0,
        shadowColor: Colors.amber,
    );
  }

}
