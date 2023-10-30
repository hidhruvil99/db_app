import 'package:db_app/screen/home%20screen/home%20pages/all_services.dart';
import 'package:db_app/screen/home%20screen/home%20pages/avtar_page.dart';
import 'package:db_app/screen/home%20screen/home%20pages/search_page.dart';
import 'package:db_app/screen/home%20screen/home%20pages/services.dart';
import 'package:db_app/screen/home%20screen/home%20pages/slider/main_slider.dart';
import 'package:db_app/screen/home%20screen/home%20pages/slider/special_offers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 234, 227, 227),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 10, right: 0, bottom: 30),
                child: Row(
                  children: [
                    const Avtar(),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome"),
                        Text(
                          "Customer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.black54,
                        )
                        ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              const Search(),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Special Offers",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  Alloffers()));
                      }, child: const Text("See All"))
                    ],
                  ),
                ],
              ),
              const Slider1(),
              Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Services",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AllServices() ) );
                          }, child: const Text("See All")),
                    ],
                  ),
                  const ServicesScreen(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
