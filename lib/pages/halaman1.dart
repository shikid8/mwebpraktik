import 'package:flutter/material.dart';

class Pertama extends StatelessWidget {
  const Pertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
                     Navigator.pushNamed(context,'/');

                  }, child: Icon(Icons.home, color: Colors.black,)),
      ),
    );
  }
}