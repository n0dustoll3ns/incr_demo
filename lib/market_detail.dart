import 'package:flutter/material.dart';

class MarketDetailPage extends StatelessWidget {
  const MarketDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'detail',),
              Tab(text: 'detail2',),
              Tab(text: 'detail3',),
              Tab(text: 'detail4',),
            ],
          ),
          title: const Text('Binance'),
        ),
        body: Center(child: Text('BINANCE DATA')),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => setState(() => _count++),
        //   tooltip: 'Increment Counter',
        //   child: const Icon(Icons.mon),
        // ),
      ),
    );
  }
}
