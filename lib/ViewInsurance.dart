import 'package:flutter/material.dart';
import 'package:restaurantflutter/CarInsurance.dart';
import 'package:restaurantflutter/CarSuccess.dart';
import 'package:restaurantflutter/HealthInsurance.dart';
import 'package:restaurantflutter/HomePage.dart';
import 'package:restaurantflutter/LifeConfirm.dart';
import 'package:restaurantflutter/LifeInsurance.dart';

class ViewInsurance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: viewInsurance(),
    );
  }
}

class viewInsurance extends StatefulWidget {
  @override
  _viewInsuranceState createState() => _viewInsuranceState();
}

class _viewInsuranceState extends State<viewInsurance> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    CarSuccess(),
    HealthInsurance(),
    CarInsurance(),
    LifeInsurance(),
    LifeConfirm()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      backgroundColor: Color(0XFFf4f2dc),
      appBar: AppBar(
        backgroundColor: Color(0XFFf4f2dc),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xffb265138),
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return homePage();
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
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
}
