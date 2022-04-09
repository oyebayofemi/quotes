/*import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> quotes = [
    'Be yourself; Everone is taken',
    'My name is Femi Oyebayo',
    'I attended Babcock University in Ilishan Remo Ogun State Nigeria..'
  ];

  List<String> sum = [
    '1',
    '0',
    '4',
    '5',
    '6',
    '6',
    '5',
    '8',
    '4',
    '4',
    '5',
    '4',
    '4',
    '5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text(
          'Awesome Quotes',
        ),
      ),
      body: Column(
        children: sum.map((e) => Text(e)).toList(),
      ),
    );
  }
}*/

import 'quotes.dart';
import 'package:flutter/material.dart';
import 'textBookCardTemplate.dart';
import 'textBook.dart';
import 'quotesCardTemplate.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quotes> quotes = [
    Quotes(text: 'This is a nice man..', author: 'Oyebayo Femi'),
    Quotes(text: 'Medd o', author: 'Jumooke'),
    Quotes(text: 'I am a banker', author: 'Emeka')
  ];

//creating a list
  List<Textbook> books = [
    //Calling the function inside the list
    Textbook(name: 'Introduction to Mathematics', author: 'Okiemute Onome Joy'),
    Textbook(name: 'Basics in JAVA Language', author: 'Gbemisola'),
    Textbook(name: 'Python Advanced', author: 'Pitan Simisola'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Books'),
      ),
      body: Column(
          children:
              //quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
              //books.map((e) => Text('${e.name} By ${e.author}')).toList(),
              //books.map((e) => Text('$e.name}')).toList(),
              //quotes.map((e) => QuotesCardTemplate(tests: e)).toList()
              books
                  .map((e) => TextBookCardTemplate(
                      texts: e,
                      deletes: () {
                        setState(() {
                          books.remove(e);
                        });
                      },
                      adding: () {
                        setState(() {
                          books.add(e);
                        });
                      }))
                  .toList()
          //books.map((e) => Text(e.name)).toList(),
          ),
    );
  }
}
