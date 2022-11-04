import 'package:flutter/material.dart';
import 'package:restaurantflutter/BcarSuccess.dart';

class BcarConfirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bcarConfirm(),
    );
  }
}

class bcarConfirm extends StatefulWidget {
  @override
  _bcarConfirmState createState() => _bcarConfirmState();
}

class _bcarConfirmState extends State<bcarConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf4f2dc),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.all(90),
              width: 800,
              height: 550,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/carconfirm.png'),
                ),
              )),
          InkWell(
            onTap: openBcarSuccess,
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

  void openBcarSuccess() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BcarSuccess()));
  }
}