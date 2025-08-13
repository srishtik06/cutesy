import 'package:flutter/material.dart';
import 'config.dart';

void main() {
  Config.appFlavor = Flavor.qa;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QA App',
      home: Scaffold(
        appBar: AppBar(title: const Text('QA Build')),
        body: Center(
          child: Text('Environment: ${Config.appFlavor.name}\nAPI: ${Config.baseUrl}'),
        ),
      ),
    );
  }
}
