import 'package:flutter/material.dart';
import 'main.dart'; // Hanya impor yang diperlukan

class halamanLogin extends StatefulWidget {
  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<halamanLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'asset/orange.png'), // Ganti dengan path gambar latar belakang yang sesuai
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'asset/eshop.png', // Ganti dengan path gambar yang sesuai
                      height: 125.0, // Tetapkan tinggi gambar
                    ),
                  ),
                  const Positioned(
                    bottom: 5, // Sesuaikan jarak antara gambar dan teks
                    child: Text(
                      'E-Shop',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 111, 0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0), // Sesuaikan warna teks
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username or Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {
                  // Implementasi logika login di sini
                  // Contoh sederhana: pindah ke halaman beranda tanpa BottomNavBar
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(
                      255, 255, 111, 0), // Warna latar belakang tombol
                  onPrimary: Colors.white, // Warna teks tombol
                ),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
