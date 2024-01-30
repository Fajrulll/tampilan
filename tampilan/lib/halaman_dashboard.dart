import 'package:flutter/material.dart';
import 'halaman_login.dart';

class HalamanDashboard extends StatefulWidget {
  @override
  _HalamandashboardState createState() => _HalamandashboardState();
}

class _HalamandashboardState extends State<HalamanDashboard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Dashboard!'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika untuk keluar (logout)
                // Contoh sederhana: kembali ke halaman login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => halamanLogin()),
                );
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 131, 242, 231), // Warna latar belakang hijau
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Implementasi navigasi berdasarkan indeks yang dipilih
    // Misalnya, bisa pindah ke halaman lain terkait indeks yang dipilih.
  }
}
