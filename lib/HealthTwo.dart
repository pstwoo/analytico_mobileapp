import 'package:flutter/material.dart';
import 'package:restaurantflutter/HealthOne.dart';
import 'package:restaurantflutter/HealthThree.dart';

class HealthTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: healthTwo(),
    );
  }
}

class healthTwo extends StatefulWidget {
  @override
  _healthTwoState createState() => _healthTwoState();
}

class _healthTwoState extends State<healthTwo> {
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
              return healthOne();
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
          )
        ],
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.all(90),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/healthinsuranceframe1.png'),
                ),
              )),
          Container(
              padding: EdgeInsets.all(90),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/healthinsuranceframe2.png'),
                ),
              )),
          Container(
              padding: EdgeInsets.all(90),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/healthinsuranceframe3.png'),
                ),
              )),
          InkWell(
            onTap: openHealthThree,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0),
              width: 150,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
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
            height: 20,
          ),
        ]),
      ),
    );
  }

  void openHealthThree() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HealthThree()));
  }
}
