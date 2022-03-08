import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png",
    );
  }
}
