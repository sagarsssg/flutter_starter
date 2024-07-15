import 'package:flutter_starter/environment_setup.dart';
import 'package:network_flutter/api/api.dart';

class Repo {
  static late Api _s3Api;
  static late Api _baseApi;

  static initRepo() {
    var env = Environment();
    _s3Api = Api(baseUrl: env.config.s3Url);
    _baseApi = Api(baseUrl: env.config.baseUrl);
  }

  static getBaseData() async {
    dynamic response = await _baseApi.apiCall("api/breeds/image/random",
        requestType: RequestType.GET);
    print(response);
  }

  static getS3Data() async {
    dynamic response1 = await _s3Api.apiCall("api/breeds/image/random",
        requestType: RequestType.GET);
    print(response1);
  }
}
