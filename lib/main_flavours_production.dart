import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/data/remote/repo.dart';
import 'package:flutter_starter/environment_setup.dart';
import 'package:flutter_starter/firebase_options.dart';

import 'app.dart';

Future<void> main() async {
  const String environment =
  String.fromEnvironment('app.flavor', defaultValue: Environment.PROD);
  Environment().initConfig(environment);
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  Repo.initRepo();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
