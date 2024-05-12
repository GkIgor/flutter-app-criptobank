import 'package:criptobank/pages/auth/auth.page.dart';
import 'package:criptobank/core/states/auth/auth.states.dart';
import 'package:criptobank/pages/home/home.page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AuthState _authState = AuthState();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthState(),
      child: MaterialApp(
        title: 'Criptobank',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: _authState.isAuth
            ? const Center(
                child: MyHomePage(
                title: 'Criptobank Home Page',
              ))
            : const AuthPage(),
      ),
    );
  }
}
