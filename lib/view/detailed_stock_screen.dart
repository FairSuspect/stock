import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stock/model/stock_data.dart';

class DetailedStockScreen extends StatelessWidget {
  const DetailedStockScreen({super.key, required this.data});
  final StockData data;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(data.symbol),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              style: theme.textTheme.headline4,
            ),
            Text(data.decription),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text('Капитализация'),
              trailing: Text(NumberFormat.currency(
                      symbol: data.currency == 'USD' ? r'$' : null,
                      name: data.currency)
                  .format(int.parse(data.marketCapitalization))),
            ),
            ListTile(
              leading: const Icon(Icons.house),
              title: const Text('Биржа'),
              trailing: Text(data.exchange),
            ),
          ],
        ),
      ),
    );
  }
}
