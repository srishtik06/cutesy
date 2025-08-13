import 'package:flutter/material.dart';
import 'config.dart';

late AppConfig appConfig;

void startApp({required AppConfig config}) {
  appConfig = config;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appConfig.appName,
      home: Scaffold(
        appBar: AppBar(title: Text(appConfig.appName)),
        body: Center(child: Text('Base URL: ${appConfig.baseUrl}')),
      ),
    );
  }
}
