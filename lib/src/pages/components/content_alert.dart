import 'package:flutter/material.dart';

class ContentAlert extends StatefulWidget {
  @override
  _ContentAlertState createState() => _ContentAlertState();
}

class _ContentAlertState extends State<ContentAlert> {
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Row(
            children: <Widget>[
              TextButton(
                onPressed: () => _sustraer(),
                child: Icon(Icons.remove_circle, color: Colors.red),
              ),
              SizedBox(
                width: 20.0,
              ),
              Center(
                  child: Text(
                '$_conteo',
                style: TextStyle(color: Colors.amber, fontSize: 60.0),
              )),
              SizedBox(
                width: 20.0,
              ),
              TextButton(
                  onPressed: () => _agregar(), child: Icon(Icons.add_circle)),
            ],
            mainAxisSize: MainAxisSize.min,
          ),
        ),
        Center(
            child: TextButton(
          onPressed: () => _refresh(),
          child: Text(
            'Refrescar',
            style: TextStyle(color: Colors.lightGreen, fontSize: 20.0),
          ),
          style: ButtonStyle(),
        ))
      ],
      mainAxisSize: MainAxisSize.min,
    );
  }

  void _agregar() => setState(() => _conteo++);

  void _sustraer() => {if (_conteo > 0) setState(() => _conteo--)};

  void _refresh() => setState(() => _conteo = 0);
}
