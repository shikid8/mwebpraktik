import 'package:flutter/material.dart';
import 'package:mwebprktk1/utility/collection.dart';

// class Product extends StatefulWidget {
//   const Product({super.key});

//   @override
//   State<Product> createState() => _ProductState();
// }
class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: productList(),
    );
  }
}

class productList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'produk 1',
      'price': 'Rp100.000',
      'sold': '10 Terjual',
      'image': 'https://i.pinimg.com/474x/76/c6/f0/76c6f0a06e230acff6cd832b959e8ab2.jpg'
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

// class _ProductState extends State<Product> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("Halaman2"),
//     );
//   }
// }
