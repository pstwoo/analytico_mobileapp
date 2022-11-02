import 'package:flutter/material.dart';
import 'package:restaurantflutter/DropDown.dart';
import 'package:restaurantflutter/GetInsured.dart';

class LifeInsurance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lifeInsurance(),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class lifeInsurance extends StatefulWidget {
  @override
  _lifeInsuranceState createState() => _lifeInsuranceState();
}

class _lifeInsuranceState extends State<lifeInsurance> {
  SingingCharacter? _character = SingingCharacter.lafayette;

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
