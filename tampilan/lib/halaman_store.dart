import 'package:flutter/material.dart';
import 'halaman_login.dart';

class Product {
  final String name;
  final double price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}

class halamanstore extends StatefulWidget {
  @override
  _HalamanStoreState createState() => _HalamanStoreState();
}

class _HalamanStoreState extends State<halamanstore> {
  List<Product> products = [
    Product(name: 'sepeda', price: 50.0, image: 'asset/product_a.jpg'),
    Product(name: 'jam tangan', price: 30.0, image: 'asset/product_b.jpg'),
    Product(name: 'sepatu', price: 70.0, image: 'asset/product_c.jpg'),
    Product(name: 'celana training', price: 40.0, image: 'asset/product_d.jpg'),
    Product(name: 'celana jeans', price: 40.0, image: 'asset/product_e.jpg'),
    Product(name: 'topi', price: 40.0, image: 'asset/product_f.jpg'),
    Product(name: 'ikan koi', price: 40.0, image: 'asset/product_g.jpg'),
    Product(name: 'Laptop', price: 40.0, image: 'asset/product_h.jpg'),
    Product(name: 'Ipad', price: 40.0, image: 'asset/product_i.jpg'),
    Product(name: 'Sepatu converse', price: 40.0, image: 'asset/product_j.jpg'),
  ];

  List<Product> filteredProducts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: ProductSearch(products),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => halamanLogin()),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 7.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: filteredProducts.isEmpty
            ? products.length
            : filteredProducts.length,
        itemBuilder: (context, index) {
          final product = filteredProducts.isEmpty
              ? products[index]
              : filteredProducts[index];
          return ProductCard(product: product);
        },
      ),
      backgroundColor: Color.fromARGB(255, 255, 138, 43),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //     height:
        //         80.0), // Menambahkan jarak antara card (sesuaikan dengan kebutuhan Anda)
        Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            width: 200.0,
            height: 168.0,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 170.0,
                    height: 100.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100.0,
                  left: 8.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(fontSize: 15.0, fontFamily: 'Poppins'),
                      ),
                      Text(
                        '\$${product.price.toString()}',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 120.0,
                  right: 5.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsionalitas tombol login di sini
                    },
                    child: Text('Beli'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProductSearch extends SearchDelegate<Product> {
  final List<Product> products;

  ProductSearch(this.products);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final filteredProducts =
        products.where((product) => product.name.contains(query)).toList();
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        return ProductCard(product: filteredProducts[index]);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList =
        products.where((product) => product.name.contains(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return null;
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: halamanstore(),
  ));
}
