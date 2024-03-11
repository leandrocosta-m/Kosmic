//import 'package:cosmic/login_page.dart';
import 'package:flutter/material.dart';
import 'package:kosmic/login_page.dart';
import 'splash_page.dart';
//import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        //'/home': (context) => const HomePage(),
      },
    );
  }
}
