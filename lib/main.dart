import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/First.dart';
import 'package:whatsapp_ui/Login_Page.dart';
import 'package:whatsapp_ui/status_ui.dart';
import 'package:whatsapp_ui/calls_ui.dart';
import 'package:whatsapp_ui/camera_ui.dart';

import 'firebase_options.dart';
import 'home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDefault();
  runApp(Myapp());
}

Future<void> initializeDefault() async {
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print('Initialized default app $app');
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login_Page());
  }
}
