import 'package:flutter/material.dart';
import 'halaman_login.dart';

class halamanprofil extends StatefulWidget {
  @override
  _HalamanProfilState createState() => _HalamanProfilState();
}

class _HalamanProfilState extends State<halamanprofil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Implement logout logic
              // Example: Navigate back to the login page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => halamanLogin()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('asset/lewis.jpg'),
                ),
                Container(
                  width: 120.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Lewis Ham',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Lewis.ham@example.com',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 86, 81, 242),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'No HP: +1 (123) 456-7890',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for additional action
                      },
                      child: Text('Edit Profile'),
                    ),
                  ],
                ),
              ),
            ),
            // Add more widgets or features as needed
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 138, 43), // Background color
    );
  }
}
