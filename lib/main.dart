import 'package:criptobank/pages/auth/auth.page.dart';
import 'package:criptobank/pages/core/states/auth/auth.states.dart';
import 'package:criptobank/pages/home/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AuthState().isAuth
          ? const Center(
              child: MyHomePage(
              title: 'Flutter Demo Home Page',
            ))
          : const AuthPage(),
    );
  }
}
