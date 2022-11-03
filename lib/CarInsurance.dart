import 'package:flutter/material.dart';
import 'package:restaurantflutter/CarOne.dart';
import 'package:restaurantflutter/DropDown.dart';
import 'package:restaurantflutter/HealthOne.dart';

class CarInsurance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: carInsurance(),
    );
  }
}

class carInsurance extends StatefulWidget {
  @override
  _carInsuranceState createState() => _carInsuranceState();
}

class _carInsuranceState extends State<carInsurance> {
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
                height: 0,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Car Insurance: Enter your Details",
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
              InkWell(
                onTap: openCarOne,
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
                      "Next",
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
                height: 260,
              ),
            ],
          )),
    );
  }

  void openCarOne() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CarOne()));
  }
}
