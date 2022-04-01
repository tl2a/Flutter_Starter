import 'package:flutter/material.dart';
import './quotes.dart';
import './quotes_card.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself, everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        children: quotes
            .map((quote) => QuotesCard(
                  quote: quote,
                  delete: () => setState(() => quotes.remove(quote)),
                ))
            .toList(),
      ),
    );
  }
}
