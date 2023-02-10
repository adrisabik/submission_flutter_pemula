import 'package:flutter/material.dart';
import 'package:submission/model/products.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Marketplace Pertanian'),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
                return const ProductList();
              
            },
          ),
        );
      },
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/farm-house.jpg'),
        const SizedBox(height: 8),
        const Text(
          "Product List",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),  
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: productsList.map((product) {
                return InkWell(
                  onTap: () {
                    
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.asset(product.image, fit: BoxFit.cover),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                product.price,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${product.sold} Terjual',
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  )
                );
              }).toList()
              
            )
          )
          
        ),

      ],
    );
    
  }
}
