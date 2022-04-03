import 'package:flutter/material.dart';
import './quotes.dart';

class QuotesCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuotesCard({Key? key, required this.quote, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 6),
            Text(quote.author,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                )),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () => delete(),
              icon: const Icon(Icons.delete),
              label: const Text('Delete quote'),
            )
          ],
        ),
      ),
    );
  }
}
