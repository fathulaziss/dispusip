enum Flavor { development, production, staging }

class AppConfig {
  static const urlProd = 'urlProd';
  static const urlDev = 'https://inlislite.banyuwangikab.go.id/api/web/v1/';
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

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return urlDev;

      case Flavor.production:
        return urlProd;
      case Flavor.staging:
        return urlStaging;
    }
  }
}
