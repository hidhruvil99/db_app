import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 60,
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            // focusedBorder: InputBorder.none,
            filled: true,
            fillColor: Color.fromARGB(255, 237, 232, 232),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(14)))),
      ),
    );
  }
}
