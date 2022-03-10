import 'dart:ffi';

import 'package:flutter/material.dart';
import 'mock_data.dart';

class Markets extends StatelessWidget {
  const Markets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(6.0),
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
            delimiter: 3),
        MarketListSnippet(
            name: "FTX",
            mkey: "base64content",
            descr: "Best ever example description, kinda cool aswell",
            img: "assets/images/FTX.png",
            worktime: "9:00 - 23:00 / UTC+0",
            fee: 86,
            delimiter: 3),
        MarketListSnippet(
            name: "Kraken",
            mkey: "base64content",
            descr: "Best ever example description, kinda cool aswell",
            img: "assets/images/Kraken.png",
            worktime: "24 hours a day",
            fee: 86,
            delimiter: 2),
        MarketListSnippet(
            name: "Kucoin",
            mkey: "base64content",
            descr: "Best ever example description, kinda cool aswell",
            img: "assets/images/Kucoin.png",
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
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1,2),
              )
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(img),
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        name,
                        style: TextStyle(color: Colors.black87, fontSize: 27),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    height: 50,
                    child: Center(
                        child: Icon(
                      Icons.more_vert,
                      size: 25,
                    )),
                  ),
                ],
              ),
              Container(
                height: 80,
                padding: EdgeInsets.all(5),
                child: Text(
                  descr,
                  style: TextStyle(color: Colors.black87, fontSize: 13),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: Text("Fee: $fee")),
                  Container(child: Text("Worktime: $worktime")),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
