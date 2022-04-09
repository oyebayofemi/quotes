import 'package:flutter/material.dart';
import 'textBook.dart';

class TextBookCardTemplate extends StatelessWidget {
  final Textbook texts;
  final Function deletes;
  final Function adding;
  TextBookCardTemplate(
      {required this.texts, required this.deletes, required this.adding});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(13, 13, 13, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                texts.name,
                style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
              ),
              /*SizedBox(
                height: 6.0,
              ),*/
              Text(
                texts.author,
                style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
              ),
              /*SizedBox(
                height: 8.0,
              ),*/
              Row(
                children: [
                  FlatButton.icon(
                      onPressed: () {
                        deletes();
                      },
                      icon: Icon(Icons.delete_forever_rounded),
                      label: Text('Delete')),
                  FlatButton.icon(
                      onPressed: () {
                        adding();
                      },
                      icon: Icon(Icons.add_box),
                      label: Text('Add'))
                ],
              ),
            ]),
      ),
    );
  }
}
