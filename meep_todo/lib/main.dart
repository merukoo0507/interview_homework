import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';

import 'hive/config/config.dart';
import 'todo_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Fimber.plantTree(DebugTree());
  await initialHive();

  runApp(const TodoApp());
}
