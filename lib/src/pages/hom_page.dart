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
    // menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      // initialData: [],
      builder: ((context, AsyncSnapshot<List<dynamic>> snapshot) {
        
        return ListView(
          children: _listaItems(snapshot.data),
        );
      }),
    );
  }

  List<Widget> _listaItems( List<dynamic> data ) {
    
   return data.map((elem){
      return Column(
        children: [
          ListTile(
            title: Text(elem['texto']),
            leading: Icon(Icons.ac_unit_outlined, color: Colors.blue,),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.yellow),
            onTap: (){
            },
          ),
          Divider(),
        ],
      );
    }).toList();
  
  }

}
