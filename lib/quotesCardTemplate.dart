import 'quotes.dart';
import 'package:flutter/material.dart';

class QuotesCardTemplate extends StatelessWidget {
  final Quotes tests;

  QuotesCardTemplate({required this.tests});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[Text(tests.author), Text(tests.text)],
        ),
      ),
    );
  }
}
