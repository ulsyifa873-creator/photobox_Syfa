
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final nameController = TextEditingController();

  String selectedPackage = 'Sweet Memories';
  String selectedTime = '13.00';

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BOOK A SESSION'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "LET'S MAKE MEMORIES ✷",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 22),
            const Text('Nama pelanggan'),
            const SizedBox(height: 8),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFFFFCF5),
                hintText: 'Masukkan nama kamu',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Pilih paket'),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedPackage,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFFFFCF5),
                border: OutlineInputBorder(),
              ),
              items: [
                'Mini Session',
                'Sweet Memories',
                'Best Moment'
              ].map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() => selectedPackage = value!);
              },
            ),
            const SizedBox(height: 20),
            const Text('Pilih jam'),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedTime,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFFFFCF5),
                border: OutlineInputBorder(),
              ),
              items: ['10.00', '11.00', '13.00', '14.00', '15.00']
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() => selectedTime = value!);
              },
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC65D3A),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (nameController.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Nama harus diisi!'),
                      ),
                    );
                    return;
                  }

                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('BOOKING CONFIRMED ✷'),
                      content: Text(
                        'Nama: ${nameController.text}\n'
                        'Paket: $selectedPackage\n'
                        'Jam: $selectedTime',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('TUTUP'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
                  'CONFIRM BOOKING',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
