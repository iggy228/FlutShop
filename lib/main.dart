import 'package:firebase_core/firebase_core.dart';
import 'package:flut_shop/src/injection.dart';
import 'package:flutter/material.dart';

import 'src/presentation/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();

  await Firebase.initializeApp();

  runApp(MyApp());
}
