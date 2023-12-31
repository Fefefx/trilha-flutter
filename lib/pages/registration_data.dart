import 'package:flutter/material.dart';

class RegistrationData extends StatelessWidget {
  final String text;
  final List<String> data;

  const RegistrationData({super.key, required this.text, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(text),
        ),
        body: Center(
          child: Text(data.length.toString()),
        ));
  }
}
