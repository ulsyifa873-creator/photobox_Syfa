
import 'package:flutter/material.dart';
import 'gallery_page.dart';
import 'package_page.dart';
import 'booking_page.dart';
import 'profile_page.dart';

const cream = Color(0xFFF3E9D2);
const brown = Color(0xFF30251D);
const terracotta = Color(0xFFC65D3A);
const mustard = Color(0xFFD5A642);
const olive = Color(0xFF74734B);

void main() {
  runApp(const PhotoBoxApp());
}

class PhotoBoxApp extends StatelessWidget {
  const PhotoBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PHOTOBOX',
      theme: ThemeData(
        scaffoldBackgroundColor: cream,
        colorScheme: ColorScheme.fromSeed(seedColor: terracotta),
        appBarTheme: const AppBarTheme(
          backgroundColor: cream,
          foregroundColor: brown,
          elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void go(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PHOTOBOX ✷',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 3,
            color: brown,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () => go(context, const ProfilePage()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFE6D5B8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'GOOD TIMES.\nGREAT FRAMES.',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: brown,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'The art of keeping memories.',
                    style: TextStyle(color: brown),
                  ),
                  const SizedBox(height: 18),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/images/p5.jpg',
                      height: 450,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'EST. 2026 • ANALOG PHOTO STUDIO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            const Text(
              'EXPLORE OUR SPACE',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: brown,
              ),
            ),
            const SizedBox(height: 15),
            menu(context, '01', 'PHOTO GALLERY',
                Icons.photo_library, const GalleryPage()),
            menu(context, '02', 'PHOTO PACKAGES',
                Icons.camera_alt, const PackagePage()),
            menu(context, '03', 'BOOK A SESSION',
                Icons.calendar_month, const BookingPage()),
            menu(context, '04', 'ABOUT US',
                Icons.info_outline, const ProfilePage()),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'KEEP THE GOOD MEMORIES ✷',
                style: TextStyle(
                  color: terracotta,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menu(BuildContext context, String number, String title,
      IconData icon, Widget page) {
    return InkWell(
      onTap: () => go(context, page),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFCF5),
          border: Border.all(color: mustard),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Text(number,
                style: const TextStyle(
                    color: terracotta, fontWeight: FontWeight.bold)),
            const SizedBox(width: 15),
            Icon(icon, color: terracotta),
            const SizedBox(width: 15),
            Expanded(
              child: Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: brown)),
            ),
            const Icon(Icons.arrow_forward_ios, size: 15),
          ],
        ),
      ),
    );
  }
}
