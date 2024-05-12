import 'package:criptobank/pages/auth/components/form.component.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Login',
            style: textStyle,
          ),
        ),
      ),
      body: Container(
        color: Colors.purple,
        padding: const EdgeInsets.all(16),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            AuthForm(),
          ],
        ),
      ),
    );
  }
}
