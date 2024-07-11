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

class StagConfig implements BaseConfig {
  @override
  String get baseUrl => "https://";

  @override
  String get s3Url => "";
}

class ProdConfig implements BaseConfig {
  @override
  String get baseUrl => "https://";

  @override
  String get s3Url => "";
}

class Environment {
  static intiConfig(String environment) {}
}
