import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("analytics")),
      body: Center(
        child: ElevatedButton(onPressed: () {}, child: const Text("ok")),
      ),
    );
  }
}
