enum Flavor { dev, qa, prod }

class Config {
  static late Flavor appFlavor;

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return 'https://dev.example.com/api';
      case Flavor.qa:
        return 'https://qa.example.com/api';
      case Flavor.prod:
        return 'https://prod.example.com/api';
    }
  }
}
