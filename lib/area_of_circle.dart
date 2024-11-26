import 'package:flutter/material.dart';

class AreaOfCirclePage extends StatefulWidget {
  const AreaOfCirclePage({super.key});

  @override
  State<AreaOfCirclePage> createState() => _AreaOfCirclePageState();
}

class _AreaOfCirclePageState extends State<AreaOfCirclePage> {
  double radius = 0;
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Radius',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  area = 3.14 * radius * radius;
                });
              },
              child: const Text('Calculate Area'),
            ),
            const SizedBox(height: 20),
            Text(
              'Area: $area',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
