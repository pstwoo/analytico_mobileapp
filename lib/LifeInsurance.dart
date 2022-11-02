import 'package:flutter/material.dart';
import 'package:restaurantflutter/DropDown.dart';
import 'package:restaurantflutter/GetInsured.dart';
import 'package:restaurantflutter/HomePage.dart';
import 'package:restaurantflutter/Onboarding.dart';

class LifeInsurance extends StatelessWidget {
  int currentIndex;
  LifeInsurance({
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lifeInsurance(),
    );
  }
}

class lifeInsurance extends StatefulWidget {
  @override
  _lifeInsuranceState createState() => _lifeInsuranceState();
}

int _currentIndex = 1;

class _lifeInsuranceState extends State<lifeInsurance> {
  void onTappedBar(int index) {
    Navigator.pop(context);
    if (index == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(currentIndex: index)));
    } else if (index == 1) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LifeInsurance(currentIndex: index)));
    } else if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DropDown()));
    } else if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Onboarding()));
    } else if (index == 4) {
      print(
        index.toString(),
      );
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => GetInsured()));
    }
  }

  @override
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
              return getInsured();
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
                height: 0,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Life Insurance: Enter your Details",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(0.0, 2),
                              blurRadius: 3.0,
                              color: Colors.black,
                            )
                          ],
                          color: Color(0xffb265138),
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'sfpro'),
                    ),
                  ],
                ),
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _currentIndex = index;
          onTappedBar(index);
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffb265138),
        selectedItemColor: Color(0XFFf4f2dc),
        unselectedItemColor: Color(0XFFf4f2dc),
        iconSize: 35,
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
