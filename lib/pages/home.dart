
import 'package:db_app/animation/FadeAnimation.dart';
import 'package:db_app/models/service.dart';
import 'package:db_app/pages/allprofile.dart';
import 'package:db_app/pages/profile.dart';
import 'package:db_app/pages/notification.dart';
import 'package:db_app/pages/select_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Service> services = [
    Service('Cleaning', 'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
    Service('Plumber', 'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-plumber-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
    Service('Electric', 'https://img.icons8.com/external-wanicon-flat-wanicon/2x/external-multimeter-car-service-wanicon-flat-wanicon.png'),
    Service('Painter', 'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-painter-male-occupation-avatar-itim2101-flat-itim2101.png'),
    Service('Carpenter', 'https://img.icons8.com/fluency/2x/drill.png'),
    Service('Gardener', 'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-gardener-male-occupation-avatar-itim2101-flat-itim2101.png'),
  ];

  List<dynamic> workers = [
    ['ms dhoni', 'Plumber', 'https://th.bing.com/th/id/OIP.PwOwGwZVEIw2ixozyFo7NQHaEH?w=327&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7', 4.8],
    ['virat kohli', 'Cleaner', 'https://th.bing.com/th/id/OIP.FpVCEJu-14PlB2e0_W19LwHaE8?w=231&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 4.6],
    ['rohit sharma', 'Driver', 'https://th.bing.com/th/id/OIP.IreCOItTxGSg7u4joXNvtQHaGN?w=184&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7', 4.4]
  ];
  
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Dashboard', style: TextStyle(color: Colors.black),),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlankNotificationPage()));
            }, 
            icon: Icon(Icons.notifications_none, color: Colors.grey.shade700, size: 30,),
          )
        ],
        leading: GestureDetector(
          onTap: () {
            //Navigator.pushNamed(context, '/login');
            
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: CircleAvatar(
                   backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/05/89/93/27/360_F_589932782_vQAEAZhHnq1QCGu5ikwrYaQD0Mmurm0N.jpg'),
                       
              ),
              onTap: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage()));
              },
            ),
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeAnimation(1, Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  TextButton(
                    onPressed: () {
                     
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllProfileListPage()));
                    

                    }, 
                    child: Text('View all',)
                  )
                ],
              ),
            )),
            FadeAnimation(1.2, Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network('https://th.bing.com/th/id/OIP.scExuNqSeL_zvoAQbH0gWAHaHa?w=186&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7', width: 70,)
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(user.displayName ?? '', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text(user.email ?? '', style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      child: Container(

                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(child: Text('View Profile', style: TextStyle(color: Colors.white, fontSize: 18),)),
                      ),
                      onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage()));
                      },
                    )
                  ],
                ),
              ),
            )),
            SizedBox(height: 20,),
            FadeAnimation(1.3, Padding(
              padding: EdgeInsets.only(left: 20.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectService()));
                    }, 
                    child: Text('View all',)
                  )
                ],
              ),
            )),
            InkWell(
              child: Container(
                
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 300,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: services.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FadeAnimation((1.0 + index) / 4, serviceContainer(services[index].imageURL, services[index].name, index));
                  }
                ),
              ),
              onTap: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>const SelectService()));
              },
            ),
            SizedBox(height: 20,),
            FadeAnimation(1.3, Padding(
              padding: EdgeInsets.only(left: 20.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Rated', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  TextButton(
                    onPressed: () {}, 
                    child: Text('View all',)
                  )
                ],
              ),
            )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: workers.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeAnimation((1.0 + index) / 4, workerContainer(workers[index][0], workers[index][1], workers[index][2], workers[index][3]));
                }
              ),
            ),
            SizedBox(height: 150,),
          ]
        )
      )
    );
  }

  serviceContainer(String image, String name, int index) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(
            color: Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(image, height: 45),
            SizedBox(height: 20,),
            Text(name, style: TextStyle(fontSize: 15),)
          ]
        ),
      ),
    );
  }

  workerContainer(String name, String job, String image, double rating) {
    return GestureDetector(
      child: AspectRatio(
        aspectRatio: 3.5,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(image)
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text(job, style: TextStyle(fontSize: 15),)
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(rating.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Icon(Icons.star, color: Colors.orange, size: 20,)
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}