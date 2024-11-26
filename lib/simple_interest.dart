import 'package:flutter/material.dart';

class SimpleInterestPage extends StatefulWidget {
  const SimpleInterestPage({super.key});

  @override
  State<SimpleInterestPage> createState() => _SimpleInterestPageState();
}

class _SimpleInterestPageState extends State<SimpleInterestPage> {
  double principal = 0;
  double rate = 0;
  double time = 0;
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                principal = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Principal Amount',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Rate of Interest',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                time = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Time (Years)',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  interest = (principal * rate * time) / 100;
                });
              },
              child: const Text('Calculate Interest'),
            ),
            const SizedBox(height: 20),
            Text(
              'Simple Interest: $interest',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
