import 'package:flutter/material.dart';
import 'package:restaurantflutter/MyBrowse.dart';

class BlifeSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: blifeSuccess(),
    );
  }
}

class blifeSuccess extends StatefulWidget {
  @override
  _blifeSuccessState createState() => _blifeSuccessState();
}

class _blifeSuccessState extends State<blifeSuccess> {
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
                  image: AssetImage('assets/images/lifesuccess.png'),
                ),
              )),
          InkWell(
            onTap: openMyBrowse,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0),
              width: 150,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
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

  void openMyBrowse() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyBrowse()));
  }
}
