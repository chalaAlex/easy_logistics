import 'package:advanced_flutter/presentation/resources/color_manager.dart';
import 'package:advanced_flutter/presentation/resources/routes_manager.dart';
import 'package:advanced_flutter/presentation/resources/style_manager.dart';
import 'package:advanced_flutter/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // Named private constructor
  MyApp._internal();

  // Static final instance.
  static final MyApp instance = MyApp._internal();

  // factory constructor
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: RoutesManager.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
