abstract class BaseConfig {
  String get baseUrl;

  String get s3Url;
}

class DevConfig implements BaseConfig {
  @override
  String get baseUrl => "https://";

  @override
  String get s3Url => "";
}

class StageConfig implements BaseConfig {
  @override
  String get baseUrl => "https://dog.ceo/123/";

  @override
  String get s3Url => "https://dog.ceo/456/";
}

class ProdConfig implements BaseConfig {
  @override
  String get baseUrl => "https://dog.ceo/";

  @override
  String get s3Url => "https://dog.ceo/789/";
}

class Environment {
  factory Environment() {
    return _singleton;
  }

  Environment._internal(this.config);

  static final Environment _singleton = Environment._internal(DevConfig());

  static const String DEV = 'development';
  static const String STAGING = 'staging';
  static const String PROD = 'production';

  BaseConfig config;

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Environment.PROD:
        return ProdConfig();
      case Environment.STAGING:
        return StageConfig();
      default:
        return DevConfig();
    }
  }
}
