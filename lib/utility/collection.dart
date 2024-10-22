import 'package:flutter/material.dart';

class productCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const productCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.network(
              product['image'],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(product['price']),
                  ],
                ),
                Text(
                  product['sold'],
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class gridbuilder extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const gridbuilder({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return productCard(product: items[index]);
      },
    );
  }
}
