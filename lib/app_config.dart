enum Flavor { development, production, staging }

class AppConfig {
  static const urlProd = 'urlProd';
  static const urlDev = 'urlDev';
  static const urlStaging = 'urlStaging';

  static late Flavor appFlavor;

  static bool get isProduction {
    return appFlavor == Flavor.production;
  }

  static bool get isDevelopment {
    return appFlavor == Flavor.development;
  }

  static bool get isStaging {
    return appFlavor == Flavor.staging;
  }
}
