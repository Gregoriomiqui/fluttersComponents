import 'package:flutter/material.dart';




class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar( 
           title: Text('Slider Page'),
         ),
         body: Container(
           child: Column(
             children: [
               _crearSlider(),
               _crearCheckBox(),
               _crearSwitch(),
               Expanded(child: _crearImagen()),
             ],
           ),
           padding: EdgeInsets.only(top: 50.0),
         ),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.arrow_back),
           onPressed: () => Navigator.pop(context),
         ),
       ),
    );
  }

  Widget _crearSlider(){
    return Slider(
      onChanged: _bloquearCheck ?  null : ( valor ) => setState(() => _valorSlider = valor ),
      max: 400,
      min: 10,
      value: _valorSlider,
      activeColor: _valorSlider > 100 ? Colors.amber : Colors.red,
      label: 'Tamaño de la Imagen',
      //divisions: 10,
    );
  }

  Widget _crearImagen(){
    return FadeInImage(
      image: NetworkImage('https://lh3.googleusercontent.com/proxy/SDHGGSQPSEMdHwH3vjVA4P7br8jlFid2xaM7FVxRfUGgltQDZ8IaguZCnX0vXaT66v57Osun_EXC97nJXJliyaoxWyaoO09DV1f_C6nl5cmi8JE6cQ'),
      placeholder: AssetImage('assets/cargando.gif'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox(){
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: ( valor ) => setState((){ _bloquearCheck = valor; })
    // );


    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: ( valor ) => setState((){ _bloquearCheck = valor; })
    );
  }

  Widget _crearSwitch(){
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: ( valor ) => setState((){ _bloquearCheck = valor; })
    // );


    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: ( valor ) => setState((){ _bloquearCheck = valor; })
    );
  }
}