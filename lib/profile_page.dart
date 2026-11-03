
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ABOUT PHOTOBOX'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFE6D5B8),
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Icon(
                Icons.camera_alt,
                color: Color(0xFFC65D3A),
                size: 60,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'PHOTOBOX',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                letterSpacing: 4,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'THE ART OF KEEPING MEMORIES',
              style: TextStyle(
                color: Color(0xFFC65D3A),
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'A small photo corner for big memories. '
              'We love grainy tones, candid smiles, '
              'and timeless frames.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Color(0xFF30251D),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFCF5),
                border: Border.all(
                  color: const Color(0xFFD5A642),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'THE DETAILS',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Icon(Icons.camera_alt,
                          color: Color(0xFFC65D3A)),
                      SizedBox(width: 12),
                      Text('Vintage Photo Studio'),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.access_time,
                          color: Color(0xFFC65D3A)),
                      SizedBox(width: 12),
                      Text('10.00 – 17.00 WIB'),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.location_on,
                          color: Color(0xFFC65D3A)),
                      SizedBox(width: 12),
                      Text('PHOTOBOX Studio'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'STAY CLASSIC. KEEP IT REAL. ✷',
              style: TextStyle(
                color: Color(0xFFC65D3A),
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
