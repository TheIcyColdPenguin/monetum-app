import 'package:flutter/material.dart';

class Spreadsheet extends StatelessWidget {
  const Spreadsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("spreadsheet")),
      body: Center(
        child: ElevatedButton(onPressed: () {}, child: const Text("ok")),
      ),
    );
  }
}
