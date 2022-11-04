import 'package:flutter/material.dart';
import 'package:restaurantflutter/BcarInsurance.dart';
import 'package:restaurantflutter/BhealthInsurance.dart';
import 'package:restaurantflutter/BlifeInsurance.dart';

class BdropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bdropDown(),
    );
  }
}

class bdropDown extends StatefulWidget {
  @override
  _bdropDownState createState() => _bdropDownState();
}

class _bdropDownState extends State<bdropDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf4f2dc),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
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
                    height: 10,
                  ),
                  InkWell(
                    onTap: openBlifeInsurance,
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
                    onTap: openBhealthInsurance,
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
                    onTap: openBcarInsurance,
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
    );
  }

  void openBlifeInsurance() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BlifeInsurance()));
  }

  void openBhealthInsurance() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BhealthInsurance()));
  }

  void openBcarInsurance() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BcarInsurance()));
  }
}
