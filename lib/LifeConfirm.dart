import 'package:flutter/material.dart';

import 'package:restaurantflutter/LifeSuccess.dart';
import 'package:restaurantflutter/LifeThree.dart';

class LifeConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lifeConfirm(),
    );
  }
}

class lifeConfirm extends StatefulWidget {
  @override
  _lifeConfirmState createState() => _lifeConfirmState();
}

class _lifeConfirmState extends State<lifeConfirm> {
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
              return lifeThree();
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.all(90),
              width: 800,
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lifeconfirm.png'),
                ),
              )),
          InkWell(
            onTap: openLifeSuccess,
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

  void openLifeSuccess() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LifeSuccess()));
  }
}
