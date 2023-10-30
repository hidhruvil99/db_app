import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:db_app/screen/home%20screen/home_screen.dart';
import 'package:flutter/material.dart';


class HomeScreenBottom extends StatefulWidget {
  const HomeScreenBottom({super.key});

  @override
  State<HomeScreenBottom> createState() => _HomeScreenBottomState();
}

class _HomeScreenBottomState extends State<HomeScreenBottom> {
  List pages = [HomeScreen(), HomeScreen(), HomeScreen(), HomeScreen()];
  int curIndx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[curIndx]),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          Icons.home,
          Icons.backup_table,
          Icons.calendar_today_outlined,
          Icons.person,
        ],
        activeIndex: curIndx,
        activeColor: Color(0xff7210FF),
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() => curIndx = index),
      ),
    );
  }
}
