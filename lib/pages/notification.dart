import 'package:flutter/material.dart';

class BlankNotificationPage extends StatelessWidget {
  const BlankNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: const Center(
        child: Text('No notifications'),
      ),
    );
  }
}
