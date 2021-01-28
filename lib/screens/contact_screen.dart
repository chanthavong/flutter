import 'package:flutter/material.dart';
import 'package:flutter_google_account/model/contact_model.dart';

class ContactScreen extends StatelessWidget {
  List<ContactModel> contacts = [
    ContactModel(name: 'Mark', phone: '9988 3344'),
    ContactModel(name: 'Alex', phone: '9988 5555'),
    ContactModel(name: 'Do', phone: '9988 6665'),
    ContactModel(name: 'Ju', phone: '9988 7777'),
    ContactModel(name: 'Dox', phone: '9988 7777'),
  ];

  List<String> langs = [
    'Java',
    'Object C',
    'C++',
    'PHP',
    'Java Script',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: ListView(
        children: [
          Container(
            height: 70.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: langs.map((e) => Chip(label: Text(e))).toList(),
            ),
          ),
          Column(
            children: contacts
                .map((e) => ListTile(
                      title: Text(e.name),
                      subtitle: Text(e.phone),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
