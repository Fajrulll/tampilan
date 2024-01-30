import 'package:flutter/material.dart';
import 'halaman_login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tidak perlu logika delay dan navigasi di sini, karena flutter_native_splash akan menangani itu.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Warna latar belakang transparan karena splash screen sudah ditangani.
      body: Center(
        child: Image.asset(
          'asset/splash.png',
          width: 200, // Sesuaikan dengan lebar gambar yang diinginkan
          height: 200, // Sesuaikan dengan tinggi gambar yang diinginkan
          // fit: BoxFit.contain, // Sesuaikan dengan kebutuhan, bisa dihapus jika tidak diperlukan
        ),
      ),
    );
  }
}
