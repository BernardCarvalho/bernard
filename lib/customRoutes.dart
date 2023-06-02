import 'package:bernard/FirstScreen.dart';
import 'package:bernard/SecondScreen.dart';
import 'package:flutter/material.dart';

import 'model/Usuario.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => FirstScreen(),
  '/segundaTela': (context) => SecondScreen(Usuario as Usuario),
};
