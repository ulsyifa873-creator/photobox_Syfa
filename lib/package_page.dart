
import 'package:flutter/material.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final packages = [
      ['MINI SESSION', '15 menit • 5 foto edit', 'Rp50.000'],
      ['SWEET MEMORIES', '30 menit • 10 foto edit', 'Rp100.000'],
      ['BEST MOMENT', '60 menit • 20 foto edit', 'Rp175.000'],
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('OUR PACKAGES'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(18),
        itemCount: packages.length,
        itemBuilder: (context, index) {
          final item = packages[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFCF5),
              border: Border.all(color: const Color(0xFFD5A642)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.camera_alt,
                  color: Color(0xFFC65D3A),
                  size: 35,
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item[0],
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(item[1]),
                      const SizedBox(height: 8),
                      Text(
                        item[2],
                        style: const TextStyle(
                          color: Color(0xFFC65D3A),
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
