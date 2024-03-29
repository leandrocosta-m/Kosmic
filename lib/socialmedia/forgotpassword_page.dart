// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:kosmic/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

//import 'package:flutter_test/flutter_test.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();
  /*
  Future<void> _resetPassword(BuildContext context) async {
    try {
      final auth = FirebaseAuth.instance;
      await auth.sendPasswordResetEmail(email: _emailController.text.trim()); //

      //await auth.sendPasswordResetEmail(email: 'email enviado com sucesso!');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email de recuperação enviado com sucesso!'),
        ),
      );
    } on FirebaseAuthException catch (e) {
      String message = 'Erro ao redefinir senha.';
      switch (e.code) {
        case 'user-not-found':
          message = 'Usuario não encontrado. Verifique o email digitado.';
          break;

        case 'too-many-request':
          message =
              'Muitas tentativas de redefinição de senha. Tente novamente mais tarde!';
          break;

        default:
          message = 'Erro desconhecido. Tente novamente mais tarde!';
          break;
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }*/

  Future<void> _resetPassword(BuildContext context) async {
    try {
      final auth = FirebaseAuth.instance;
      await auth.sendPasswordResetEmail(email: _emailController.text.trim());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email enviado com sucesso.'),
        ),
      );
    } catch (e) {
      print("Erro: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Erro'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              //centralizando campo de email
              const SizedBox(height: 250),
              Center(
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  /*onChanged: (text) {
                    setState(() {
                      _email = text;
                    });
                  },*/
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
                  /*
                  onPressed: () async {
                    await _resetPassword(context);
                    //adicionar a logica depois
                  },*/
                  onPressed: () async {
                    try {
                      await _resetPassword(context);
                    } on FirebaseAuthException catch (e) {
                      String message = 'Erro ao redefinir senha.';
                      switch (e.code) {
                        //tratar mensagem
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    }
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
