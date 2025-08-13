import 'package:flutter/material.dart';
import 'config.dart';
import 'main.dart' as main_app;

void main() {
  // You can set different config values for QA
  final qaConfig = AppConfig(
    appName: "Cutesy QA",
    baseUrl: "https://qa.api.example.com",
  );

  main_app.startApp(config: qaConfig);
}
