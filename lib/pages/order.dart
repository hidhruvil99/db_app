import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Placed'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.check_circle_outline,
              size: 128,
              color: Colors.green,
            ),
            SizedBox(height: 16),
            Text(
              'Your order has been placed!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'You will receive a confirmation email shortly.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  
  }
}
