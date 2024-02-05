import 'package:flutter/material.dart';
import 'halaman_login.dart';

class Product {
  final String name;
  final double price;
  final String image;
  int quantity; // Tambahkan atribut quantity

  Product(
      {required this.name,
      required this.price,
      required this.image,
      this.quantity = 0});
}

class halamancart extends StatefulWidget {
  @override
  _HalamanCartState createState() => _HalamanCartState();
}

class _HalamanCartState extends State<halamancart> {
  // Data produk dalam keranjang belanja
  List<Product> cartItems = [
    Product(
        name: 'sepeda', price: 50.0, image: 'asset/product_a.jpg', quantity: 2),
    Product(
        name: 'jam', price: 30.0, image: 'asset/product_b.jpg', quantity: 1),
    Product(
        name: 'sepatu', price: 70.0, image: 'asset/product_c.jpg', quantity: 3),
    Product(
        name: 'celana', price: 40.0, image: 'asset/product_d.jpg', quantity: 1),
    Product(
        name: 'ikan koi',
        price: 40.0,
        image: 'asset/product_g.jpg',
        quantity: 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shopping Cart'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Implementasi logika untuk keluar (logout)
              // Contoh sederhana: kembali ke halaman login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => halamanLogin()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return CartItem(product: cartItems[index]);
        },
      ),
      backgroundColor: Color.fromARGB(255, 255, 138, 43),
    );
  }
}

class CartItem extends StatelessWidget {
  final Product product;

  CartItem({required this.product});

  @override
  Widget build(BuildContext context) {
    double totalPrice = product.price * product.quantity;

    return Card(
      elevation: 5.0,
      child: ListTile(
        leading: ClipRRect(
          borderRadius:
              BorderRadius.circular(10.0), // Sesuaikan dengan preferensi Anda
          child: Image.asset(
            product.image,
            width: 90.0,
            height: 125.0,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(product.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('\$${product.price.toString()}'),
            Text('Jumlah: ${product.quantity}'),
            SizedBox(height: 8.0), // Spasi antara jumlah dan total
            Text('Total: \$${totalPrice.toStringAsFixed(2)}'),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // Implementasi logika untuk melihat detail pesanan atau edit
            // ...
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                horizontal: 12.0), // Sesuaikan dengan preferensi Anda
          ),
          child: Text(
            'Lihat Pesanan',
            style:
                TextStyle(fontSize: 12.0), // Sesuaikan dengan preferensi Anda
          ),
        ),
      ),
    );
  }
}
