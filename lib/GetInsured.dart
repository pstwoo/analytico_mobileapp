import 'package:flutter/material.dart';
import 'package:restaurantflutter/DropDown.dart';
import 'package:restaurantflutter/HomePage.dart';

class GetInsured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getInsured(),
    );
  }
}

class getInsured extends StatefulWidget {
  @override
  _getInsuredState createState() => _getInsuredState();
}

class _getInsuredState extends State<getInsured> {
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
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
              onTap: openDropDown,
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
              height: 260,
            ),
          ],
        ),
      ),
    );
  }

  void openDropDown() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DropDown()));
  }
}
