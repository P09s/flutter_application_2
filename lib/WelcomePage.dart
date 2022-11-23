import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, email, phone;

  WelcomePage({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('=> >_< Data that you have filled on the previous page >_< <='),
          Text('Name : ${name}'),
          Text('email : ${email}'),
          Text('phone : ${phone}'),
        ],
      ),
    ));
  }
}
