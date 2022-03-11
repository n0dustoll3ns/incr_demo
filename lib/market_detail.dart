import 'package:flutter/material.dart';

class MarketDetailPage extends StatelessWidget {
  const MarketDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Binance'),
      ),
      body: Center(child: Text('BINANCE DATA')),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => setState(() => _count++),
      //   tooltip: 'Increment Counter',
      //   child: const Icon(Icons.mon),
      // ),
    );
  }
}
