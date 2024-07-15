import 'package:flutter/material.dart';
import 'package:flutter_starter/data/remote/repo.dart';
import 'package:flutter_starter/environment_setup.dart';

import 'app.dart';

void main() {
  const String environment =
      String.fromEnvironment('app.flavor', defaultValue: Environment.PROD);
  Environment().initConfig(environment);
  Repo.initRepo();
  runApp(const MyApp());
}
