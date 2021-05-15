import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
 // int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Page')),
      body: Center(child: _buttonAlertList(context)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _buttonAlertList(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        onPressed: () => _mostrarAlert(context),
        child: Text('Mostrar Alerta'),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
          shape: StadiumBorder(),
        ),
      ),
      ElevatedButton(
        onPressed: () => _mostrarAlert2(context),
        child: Text('Mostrar Alerta con Imagen'),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          shape: StadiumBorder(),
        ),
      ),
      // ElevatedButton(
      //   onPressed: () => _mostrarAlert3(context),
      //   child: Text('Mostrar Alerta Contador'),
      //   style: ElevatedButton.styleFrom(
      //     primary: Colors.red,
      //     shape: StadiumBorder(),
      //   ),
      // ),
      // SizedBox(height: 50.0),
      // Text('$_conteo')
    ],
    mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text("titulo"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            content: Column(
              children: <Widget>[
                Text('Contenido de la Alerta'),
                FlutterLogo(size: 100.0)
              ],
              mainAxisSize: MainAxisSize.min,
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok'))
            ],
          );
        });
  }

  void _mostrarAlert2(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text("Alerta con Imagen"),
            content: Column(
              children: <Widget>[
                FadeInImage(
                  height: 250.0,
                  fit: BoxFit.cover,
                  fadeInDuration: Duration(milliseconds: 200),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage(
                      'https://adwallpapers.xyz/uploads/posts/71162-autumn-lake-landscape-wallpaper-4k-ultra-hd-wallpaper__nature.jpg'),
                ),
                Text('Soy la alerta con la imagen')
              ],
              mainAxisSize: MainAxisSize.min,
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok'))
            ],
          );
        });
  }

  // void _mostrarAlert3(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text("Actualizador de contador"),
  //           content: _contentAlertContador(context),
  //         );
  //       });
  // }

  // Widget _contentAlertContador(BuildContext context) {
  //   return 
  // }

 
}
