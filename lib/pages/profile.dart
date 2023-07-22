import 'package:flutter/material.dart';
import 'package:nike_app/pages/login.dart'; // Import halaman LoginPage

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add logout functionality here
            _logout();
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
          child: Text(
            'Logout',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  // Function untuk logout
  void _logout() {
    // Add any logout logic here, such as clearing user session, etc.

    // Navigate back to LoginPage after logout
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Ganti LoginPage dengan nama halaman login Anda
      (route) => false, // Jika sudah kembali ke LoginPage, hapus semua halaman sebelumnya dari tumpukan navigasi
    );
  }
}
