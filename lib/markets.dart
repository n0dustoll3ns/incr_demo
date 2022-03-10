import 'dart:ffi';

import 'package:flutter/material.dart';
import 'mock_data.dart';

class Markets extends StatelessWidget {
  const Markets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset("assets/images/Binance.png"),
          title: Text("Binance"),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    );
  }
}

class MarketListSnippet extends StatelessWidget {
  const MarketListSnippet({
    Key? key,
    required this.name,
    required this.mkey,
    required this.descr,
    required this.img,
    required this.worktime,
    required this.fee,
    required this.delimiter,
  }) : super(key: key);
  final String name;
  final String mkey;
  final String descr;
  final String img;
  final String worktime;
  final String fee;
  final String delimiter;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(name),
                ),
                SizedBox(
                  height: 30,
                  child: Text(name,
                  style: TextStyle(color: Colors.black87, fontSize: 35),
                    ),
                )
              ],
            ),
            Text(descr),
            Row(),
          ],
        ));
  }
}
