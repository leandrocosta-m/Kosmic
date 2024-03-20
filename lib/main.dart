import 'package:flutter/material.dart';
import 'app_widget.dart';
import 'splash_page.dart';
//import 'login_page.dart';

main() {
  runApp(const AppWidget());
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
