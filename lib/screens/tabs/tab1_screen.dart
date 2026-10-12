import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  final coins = [
    {'name': 'Bitcoin', 'sym': 'BTC', 'price': '\$68,450.00', 'chg': '+4.2%', 'up': true},
    {'name': 'Ethereum', 'sym': 'ETH', 'price': '\$3,820.50', 'chg': '+6.8%', 'up': true},
    {'name': 'Solana', 'sym': 'SOL', 'price': '\$174.20', 'chg': '-1.5%', 'up': false},
    {'name': 'Avalanche', 'sym': 'AVAX', 'price': '\$32.80', 'chg': '+8.4%', 'up': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TokenOrbit • Screener', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.stars_rounded, color: AppTheme.secondary),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: coins.length,
        itemBuilder: (context, i) {
          final c = coins[i];
          final up = c['up'] as bool;
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(c['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                    Text(c['sym'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(c['price'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(color: (up ? Colors.green : Colors.red).withValues(alpha: 0.2), borderRadius: BorderRadius.circular(6)),
                      child: Text(c['chg'] as String, style: TextStyle(color: up ? Colors.greenAccent : Colors.redAccent, fontSize: 11, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
