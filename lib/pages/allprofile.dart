import 'package:flutter/material.dart';

class AllProfileListPage extends StatelessWidget {
  const AllProfileListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Profiles'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
            ),
            title: Text('aditya gadhvi $index'),
            subtitle: Text('Service Provider'),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
