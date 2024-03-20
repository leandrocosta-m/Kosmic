// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kosmic/login_page.dart';
//import 'package:kosmic/login_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.3),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'lib/assets/images/splash/back.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //centraliado campo de email
              const SizedBox(height: 250),
              Center(
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      email = text;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: Colors.transparent,
                    filled: true,
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 0.50,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                    stops: [0.0872, 0.5087, 0.9130],
                    colors: [
                      Color(0xFFE961FF),
                      Color(0xFF00E5E5),
                      Color(0xFF72A5F2),
                    ],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    //adicionar a logica depois
                  },
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
