import 'package:flutter/material.dart';

class SelfServicePage extends StatelessWidget {
  const SelfServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Atendimento')),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
