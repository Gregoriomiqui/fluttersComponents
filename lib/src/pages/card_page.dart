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
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
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
            title: Text("What is Lorem Ipsum?"),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy" +
            "text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum", textAlign: TextAlign.justify,),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      shadowColor: Colors.blue,
    );
  }

  Widget _cardTipo2(){

    final card = Container( 
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
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(1.0, -10.0)
            )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card
      ),
    );
  }

  

}
