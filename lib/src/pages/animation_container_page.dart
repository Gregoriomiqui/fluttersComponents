import 'dart:math';

import 'package:flutter/material.dart';


class AnimationContainerPage extends StatefulWidget {
  @override
  _AnimationContainerPageState createState() => _AnimationContainerPageState();
}

class _AnimationContainerPageState extends State<AnimationContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animation Container'),
        ),
        body: Column(
          children: [
            Center(
              child: AnimatedContainer(
                duration: Duration( seconds: 1 ),
                curve: Curves.fastOutSlowIn,
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                  color: _color
                ),
              ),
            ),
            SizedBox( height: 250.0 ),
            Container(
              child: ElevatedButton( 
                onPressed: ()=> _changeContainer(), 
                child: Row( children:[
                  Icon(Icons.play_arrow),  
                  Text('Animated')
                ] 
                ), 
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  shape: StadiumBorder(),
                ),
              ),
              width: 125.0,
              height: 50.0,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.pop(context)
        ),
      )
    );
  }

  void _changeContainer(){

    final random = Random();

    setState(()
      {
        _width = random.nextInt(300).toDouble();
        _height = random.nextInt(300).toDouble();
        _color = Color.fromRGBO(
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
          1);
        _borderRadius = BorderRadius.circular( random.nextInt(100).toDouble());
      }
    );    
  }

}

