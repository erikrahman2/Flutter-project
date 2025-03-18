import 'package:flutter/material.dart';

class ManageWidget extends StatefulWidget {
  const ManageWidget({super.key});

  @override
  State<ManageWidget> createState() => _ManageWidgetState();
}

class _ManageWidgetState extends State<ManageWidget> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("pengelolaan widget ~ Erik Rahman")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              child: Container(
                width: 400,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'widget with animation',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacity = _opacity == 1.0 ? 0.0 : 1.0;
                });
              },
              child: const Text("Opacity"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
