import 'package:flutter/material.dart';


class BarProgressPage extends StatefulWidget {
  @override
  _BarProgressPageState createState() => _BarProgressPageState();
}

class _BarProgressPageState extends State<BarProgressPage>
    with TickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barras de Progreso'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              CircularProgressIndicator(
                strokeWidth: 4.0,
                //semanticsValue: '5.3',
                valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                value: controller.value,
                //backgroundColor: Colors.amber,
                //semanticsLabel: '5.3',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back)),
    );
  }
}
