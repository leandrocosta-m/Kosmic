import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'app_widget.dart';
import 'splash_page.dart';

//import 'login_page.dart';
final FirebaseAuth auth = FirebaseAuth.instance;
final database = FirebaseDatabase.instance;
const String email = '';
final userRef = database.ref().child("usuarios").child(email);

void main() async {
  runApp(const AppWidget());
  Firebase.initializeApp();
  FirebaseAuth.instance;
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashPage(),
      // Rotas adicionais ou configuração de navegação aqui
    );
  }
}
