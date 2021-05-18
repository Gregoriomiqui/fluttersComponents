import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutters_components/src/pages/alert_page.dart';
import 'package:flutters_components/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), 
        const Locale('es', 'ES'), 
      ],
      debugShowCheckedModeBanner: false,
      title: 'Componenetes APP',
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // cuando una ruta no esta definida en routes se ejecuta el onGenerateRoute
      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada: ${settings.name} ');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
