import 'package:flutter/material.dart';
import 'package:tradebits_ui/main_screen.dart';
import 'package:tradebits_ui/markets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          const SizedBox(height: 80),
          Column(
            children: [
              Image.asset("assets/images/btc.png"),
              const SizedBox(height: 16.0),
              const Text('TradeBits'),
            ],
          ),
          const SizedBox(height: 120),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Login',
            ),
          ),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Pass',
            ),
          ),
          ButtonBar(
            children: <Widget>[
              TextButton(
                child: const Text("CANCEL"),
                onPressed: () {
                  _usernameController.clear();
                  _passwordController.clear();
                },
              ),
              ElevatedButton(
                child: const Text('NEXT'),
                onPressed: () {
                  bool _isauthorized = true;
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                },
              )
            ],
          ),
        ],
      ),
    ));
  }
}
