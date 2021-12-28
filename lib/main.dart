import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/presentation/my_app.dart';

void main() {
  Firebase.initializeApp();

  runApp(MyApp());
}
