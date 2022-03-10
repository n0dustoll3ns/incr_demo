import 'package:flutter/material.dart';
import 'package:tradebits_ui/main_screen.dart';
import 'authorization.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isauthorized = false;
    if (_isauthorized == false) {
      String _initialRouteSign = '/auth';
    } else {
      String _initialRouteSign = '/';
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: _initialRouteSign,
      routes: {
        '/': (context) => MainScreen(),
        '/auth': (context) => LoginPage(),
      },
    );
  }
}

String _initialRouteSign = '/auth';
