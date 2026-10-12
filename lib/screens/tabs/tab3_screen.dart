import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gas & Market Sentiment', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text('Ethereum Mainnet Base Fee', style: TextStyle(color: Colors.white)), trailing: Text('14 Gwei', style: TextStyle(color: AppTheme.secondary, fontWeight: FontWeight.bold))),
          ListTile(title: Text('Fear & Greed Sentiment Index', style: TextStyle(color: Colors.white)), trailing: Text('74 (Greed)', style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
