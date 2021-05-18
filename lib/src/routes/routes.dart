import 'package:flutter/material.dart';
import 'package:flutters_components/src/pages/alert_page.dart';
import 'package:flutters_components/src/pages/animation_container_page.dart';
import 'package:flutters_components/src/pages/avatar_page.dart';
import 'package:flutters_components/src/pages/card_page.dart';
import 'package:flutters_components/src/pages/home_page.dart';
import 'package:flutters_components/src/pages/input_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
   return <String, WidgetBuilder>{
    '/'                   : (BuildContext context) => HomePage(),
    'alert'               : (BuildContext context) => AlertPage(),
    'avatar'              : (BuildContext context) => AvatarPage(),
    'card'                : (BuildContext context) => CardPage(),
    'animation_container' : (BuildContext context) => AnimationContainerPage(),
    'inputs'              : (BuildContext context) => InputPage(),    
  };
}


