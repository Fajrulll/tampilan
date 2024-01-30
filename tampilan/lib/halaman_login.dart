import 'package:flutter/material.dart';
import 'halaman_dashboard.dart'; // Hanya impor yang diperlukan

class halamanLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        // Menggunakan Container dengan warna hijau tosca sebagai background
        color: Color.fromARGB(255, 131, 242, 231), // Sesuaikan dengan warna yang Anda inginkan
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Username or Email'),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Implementasi logika login di sini
                  // Contoh sederhana: pindah ke halaman dashboard
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanDashboard()),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
