import 'package:flutter/material.dart';
import 'package:game_jump/pages/App.dart';
import 'package:game_jump/pages/DiviApp.dart';
import 'package:game_jump/pages/DiviAppTime.dart';
import 'package:game_jump/pages/MultiApp.dart';
import 'package:game_jump/pages/MultiAppTime.dart';
import 'package:game_jump/pages/SubsApp.dart';
import 'package:game_jump/pages/SubsAppTime.dart';
import 'package:game_jump/pages/SumApp.dart';
import 'package:game_jump/pages/SumAppTime.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => const App(),
    '/sum':(context) => const SumApp(),
    '/sum time':(context) => const SumAppTime(),
    '/multi':(context) => const MultiApp(),
    '/multi time':(context) => const MultiAppTime(),
    '/subs':(context) => const SubsApp(),
    '/subs time':(context) => const SubsAppTime(),
    '/divi':(context) => const DiviApp(),
    '/divi time':(context) => const DiviAppTime(),
},
));