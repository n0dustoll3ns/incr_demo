import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://juststickers.in/wp-content/uploads/2016/07/go-programming-language.png",
    );
  }
}
