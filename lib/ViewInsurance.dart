import 'package:flutter/material.dart';
import 'package:restaurantflutter/HomePage.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf4f2dc),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.all(90),
              width: 800,
              height: 590,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/myinsurance.png'),
                ),
              )),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }

  void openHomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Homepage()));
  }
}
