import 'package:criptobank/core/states/auth/auth.states.dart';
import 'package:criptobank/core/styles/styles.styles.dart';
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
  final AuthState _auth = AuthState();

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
    if (_formKey.currentState!.validate()) {
      setState(() {
        _auth.addAuth(_userController.text, _passwordController.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _userController,
            decoration: const InputDecoration(
              hintText: "Usuario",
              contentPadding: StylesProgram.contentPadding,
              border: OutlineInputBorder(),
              fillColor: Colors.white,
              filled: true,
              errorStyle: StylesProgram.errorStyle,
            ),
            validator: (String? value) => _userValidator(value),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
              hintText: "Senha",
              contentPadding: StylesProgram.contentPadding,
              border: OutlineInputBorder(),
              fillColor: Colors.white,
              filled: true,
              errorStyle: StylesProgram.errorStyle,
            ),
            obscureText: true,
            validator: (String? value) => _passwordValidator(value),
          ),
          const SizedBox(
            height: 20,
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
