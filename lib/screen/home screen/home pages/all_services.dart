import 'package:flutter/material.dart';

class AllServices extends StatelessWidget {
  const AllServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                //width: 70,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffF4ECFF),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/s1.png'),
                            fit: BoxFit.none,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.157),
                            )
                          ]),
                    ),
                    const Text(
                      "cleaning",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                //width: 70,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffFFF7EB),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/s2.png'),
                            fit: BoxFit.none,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.157),
                            )
                          ]),
                    ),
                    const Text(
                      "Repairing",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
               // width: 70,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffEFF3FF),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/s3.png'),
                            fit: BoxFit.none,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.157),
                            )
                          ]),
                    ),
                    const Text(
                      "Painting",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                //width: 70,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffFFFBED),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/s4.png'),
                            fit: BoxFit.none,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.157),
                            )
                          ]),
                    ),
                    const Text(
                      "Laundary",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
               // width: 70,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.157),
                            )
                          ]),
                    ),
                    const Text(
                      "clining",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
               // width: 70,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.157),
                            )
                          ]),
                    ),
                    const Text(
                      "clining",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
               // width: 70,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.157),
                            )
                          ]),
                    ),
                    const Text(
                      "clining",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
               // width: 70,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 10,
                              color: Color.fromRGBO(0, 0, 0, 0.157),
                            )
                          ]),
                    ),
                    const Text(
                      "clining",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
