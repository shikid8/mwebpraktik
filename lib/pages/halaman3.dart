import 'package:flutter/material.dart';

class Ketiga extends StatelessWidget {
  const Ketiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ketiga'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Icon(
              Icons.home,
              color: Colors.black,
            )),
      ),
    );
  }
}