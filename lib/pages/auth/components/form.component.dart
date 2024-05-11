import 'package:criptobank/pages/core/states/auth/auth.states.dart';
import 'package:criptobank/pages/core/styles/styles.styles.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();



  String? _userValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Nome de usuario não pode ficar em branco seu animal!";
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Se tu não colocar a senha, eu não vou adivinhar!";
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState == null) return;
    if (_formKey.currentState!.validate()) AuthState().addAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: StylesProgram.inputDecoration,
            child: TextFormField(
              controller: _userController,
              decoration: const InputDecoration(
                hintText: "Usuario",
              ),
              validator: (String? value) => _userValidator(value),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          Container(
            decoration: StylesProgram.inputDecoration,
            child: TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                hintText: "Senha",
              ),
              obscureText: true,
              validator: (String? value) => _passwordValidator(value),
            ),
          ),
          Container(
            color: Colors.purple,
            child: ElevatedButton(
              onPressed: () {
                _submitForm();
              },
              child: const Text(
                "Login",
                style: StylesProgram.authButton,
              ),
            ),
          )
        ],
      ),
    );
  }
}
