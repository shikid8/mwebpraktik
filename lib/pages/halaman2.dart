import 'package:flutter/material.dart';

class Kedua extends StatelessWidget {
  const Kedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kedua'),
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