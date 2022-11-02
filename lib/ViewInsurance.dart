import 'package:flutter/material.dart';
import 'package:restaurantflutter/DropDown.dart';
import 'package:restaurantflutter/GetInsured.dart';
import 'package:restaurantflutter/HomePage.dart';
import 'package:restaurantflutter/LifeInsurance.dart';
import 'package:restaurantflutter/Onboarding.dart';

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
      body: Container(),
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
        onTap: (index) => onTappedBar(index),
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
}
