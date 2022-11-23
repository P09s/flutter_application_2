import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.all(8.0)),
          TextField(
            controller: _name,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Enter Name'),
          ),
          Padding(padding: const EdgeInsets.all(8.0)),
          TextField(
            controller: _email,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Enter email'),
          ),
          Padding(padding: const EdgeInsets.all(8.0)),
          TextField(
            controller: _phone,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Enter phone'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WelcomePage(
                      name: _name.text,
                      email: _email.text,
                      phone: _phone.text)));
            },
            child: Text('PROCEED TO NEXT'),
          )
        ],
      ),
    );
  }
}
