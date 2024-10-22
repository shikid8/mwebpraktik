import 'package:flutter/material.dart';
import 'package:mwebprktk1/utility/collection.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image placeholder
          Container(
            color:  const Color.fromARGB(255, 255, 255, 255),
            height: 180,
            width: double.infinity,
            child: Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
          ),
          // Icons row
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                     Navigator.pushNamed(context,'/halaman1');

                  }, child: Icon(Icons.history, color: Colors.black,)),
                ElevatedButton(
                  onPressed: (){
                     Navigator.pushNamed(context,'/halaman2');

                  }, child: Icon(
                      Icons.shopping_cart_checkout_sharp,
                      color: Colors.black,
                    )),

                  ElevatedButton(
                  onPressed: (){
                     Navigator.pushNamed(context,'/halaman3');

                  }, child: Icon(
                      Icons.wallet,
                      color: Colors.black,
                    ))
                  
                  
              ],
            ),
          ),
          // List of names
          Expanded(
            child: productList(),
          ),
        ],
      ),
    );
  }
}

class productList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'produk 1',
      'price': 'Rp100.000',
      'sold': '10 Terjual',
      'image':
          'https://i.pinimg.com/474x/76/c6/f0/76c6f0a06e230acff6cd832b959e8ab2.jpg'
    },
    {
      'name': 'produk 1',
      'price': 'Rp100.000',
      'sold': '10 Terjual',
      'image':
          'https://i.pinimg.com/enabled_hi/474x/95/0d/26/950d2649dbebb3649456df70c192ea5e.jpg'
    },
  ];

  productList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Produk"),
      ),
      body: gridbuilder(items: products),
    );
  }
}
