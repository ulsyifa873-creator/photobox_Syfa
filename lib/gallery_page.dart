
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  final List<String> photos = const [
    'assets/images/p1.jpeg',
    'assets/images/p2.jpeg',
    'assets/images/p3.jpeg',
    'assets/images/p4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PHOTO JOURNAL ✷',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'A COLLECTION OF GOOD MOMENTS',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w900,
                color: Color(0xFF30251D),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Vintage frames • Candid stories • Timeless feels',
              style: TextStyle(
                color: Color(0xFF74734B),
              ),
            ),
            const SizedBox(height: 18),

            Expanded(
              child: GridView.builder(
                itemCount: photos.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      photos[index],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: const Color(0xFFE6D5B8),
                          child: const Icon(
                            Icons.broken_image,
                            color: Color(0xFFC65D3A),
                            size: 40,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
