import 'package:flutter/material.dart';
import 'package:restaurantflutter/DropDown.dart';

class HealthInsurance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: healthInsurance(),
    );
  }
}

class healthInsurance extends StatefulWidget {
  @override
  _healthInsuranceState createState() => _healthInsuranceState();
}

class _healthInsuranceState extends State<healthInsurance> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf4f2dc),
      appBar: AppBar(
        backgroundColor: Color(0XFFf4f2dc),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xffb265138),
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return dropDown();
            },
          )),
        ),
        title: Image.asset(
          'assets/images/logo1.png',
          height: 80,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Color(0xffb265138),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Find the right Insurance for you.",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(0.0, 2),
                            blurRadius: 3.0,
                            color: Colors.black,
                          )
                        ],
                        color: Color(0xffb265138),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'sfpro'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "◉ Select from our multi-partnered insurance companies depending on desired insurance type",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "◉ Choose the best insurance deal according to your budget",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "◉ Get to see the coverage and benefits of recommended insurances",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 0,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 4,
                        offset: Offset(4, 8),
                      )
                    ],
                    gradient: LinearGradient(
                        colors: [Color(0xffb265138), Color(0xffb265138)],
                        stops: [0, 1],
                        begin: Alignment.topCenter)),
                child: Center(
                  child: Text(
                    "Start ▶",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'sfpro'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 160,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffb265138),
        selectedItemColor: Color(0XFFf4f2dc),
        unselectedItemColor: Color(0XFFf4f2dc),
        iconSize: 35,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_paste_search_rounded), label: 'Browse'),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: 'Insurance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void openDropDown() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DropDown()));
  }
}
