import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://larepublica.pe/resizer/jsKZ34E_7Zy4Yz__U77dbs1XBPA=/1250x735/top/smart/cloudfront-us-east-1.images.arcpublishing.com/gruporepublica/H7FWZQAVARAJ7NQ45MJRTUZN2U.png'),
              radius: 22.0,
            ),
            SizedBox(width: 5.0),
            Container(
              child: CircleAvatar(
                child: Text('JM'),
                backgroundColor: Colors.brown,
              ),
              margin: EdgeInsets.only(right: 10.0),
            )
          ],
        ),
        body: Container(
          child: Center(
            child: FadeInImage(
              image: NetworkImage(
                  'https://frasesdelavida.com/wp-content/uploads/2018/04/Lobezno.jpg'),
              placeholder: AssetImage('assets/loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
            ),
          ),
          color: Colors.amber.shade200,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ));
  }
}
