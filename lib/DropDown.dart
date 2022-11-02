import 'package:flutter/material.dart';
import 'package:restaurantflutter/CarInsurance.dart';
import 'package:restaurantflutter/GetInsured.dart';
import 'package:restaurantflutter/HealthInsurance.dart';
import 'package:restaurantflutter/LifeInsurance.dart';

import 'HomePage.dart';
import 'Onboarding.dart';

class DropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dropDown(),
    );
  }
}

class dropDown extends StatefulWidget {
  @override
  _dropDownState createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
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
              builder: (context) => LifeInsurance(
                    currentIndex: index,
                  )));
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Select your Insurance Type.",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(0.0, 2),
                            blurRadius: 3.0,
                            color: Colors.black,
                          )
                        ],
                        color: Color(0xffb265138),
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'sfpro'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 230,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                          "Life Insurance",
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
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 230,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                          "Health Insurance",
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
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 230,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                          "Car Insurance",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'sfpro'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
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
        onTap: (index) => onTappedBar(index),
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
}
