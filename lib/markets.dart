import 'dart:ffi';

import 'package:flutter/material.dart';
import 'mock_data.dart';

class Markets extends StatelessWidget {
  const Markets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <MarketListSnippet>[
        MarketListSnippet(
            name: "Binance",
            mkey: "base64content",
            descr: "Best ever example description, kinda cool aswell",
            img: "assets/images/Binance.png",
            worktime: "24 hours a day",
            fee: 82,
            delimiter: 2),
        MarketListSnippet(
            name: "CoinBase Exchange",
            mkey: "base64content",
            descr: "Best ever example description, kinda cool aswell",
            img: "assets/images/CoinBase Exchange.png",
            worktime: "24 hours a day",
            fee: 86,
            delimiter: 2),
        MarketListSnippet(
            name: "FTX",
            mkey: "base64content",
            descr: "Best ever example description, kinda cool aswell",
            img: "assets/images/FTX.png",
            worktime: "9:00 - 23:00 / UTC+0",
            fee: 86,
            delimiter: 1),
        MarketListSnippet(
            name: "Kraken",
            mkey: "base64content",
            descr: "Best ever example description, kinda cool aswell",
            img: "assets/images/FTX.png",
            worktime: "24 hours a day",
            fee: 86,
            delimiter: 2),
        MarketListSnippet(
            name: "Kucoin",
            mkey: "base64content",
            descr: "Best ever example description, kinda cool aswell",
            img: "assets/images/FTX.png",
            worktime: "24 hours a day",
            fee: 86,
            delimiter: 2),
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
  final int fee;
  final int delimiter;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    img,
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Text(
                    name,
                    style: TextStyle(color: Colors.black87, fontSize: 35),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Icon(Icons.more_vert),
                ),
              ],
            ),
            Text(descr),
            Row(),
          ],
        ));
  }
}
