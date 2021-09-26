// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tennis_game_management/tgm.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  runApp(TGM());
}

