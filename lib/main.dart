import 'package:flutter/material.dart';
import 'package:spendly/app/view/app.dart';
import 'package:spendly/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(App());
}
