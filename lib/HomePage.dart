import 'package:flutter/material.dart';
import 'package:restaurantflutter/GetInsured.dart';
import 'package:restaurantflutter/StyleScheme.dart';
import 'package:restaurantflutter/ViewInsurance.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
          onPressed: () {},
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
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xffb265138),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    offset: Offset(4, 8),
                  )
                ]),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("FIND THE BEST DEAL", style: headingStyle),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "We provide the right insurance based \non your budget and cash",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0XFFf4f2dc),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bannerImg.png'))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Services",
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0.0, 2),
                  blurRadius: 3.0,
                  color: Colors.black,
                )
              ],
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xffb265138),
            ),
          ),
          Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xffb265138),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4,
                      offset: Offset(4, 8),
                    )
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 100,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Get a Quote Now",
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(0.0, 2),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                )
                              ],
                              fontSize: 20,
                              color: Color(0XFFf4f2dc),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Rest Assured, Be Insured!",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0XFFf4f2dc),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: openGetInsured,
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: gradientStyle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 4,
                                      offset: Offset(4, 8),
                                    )
                                  ]),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30),
                              child: Text(
                                "Get Insured",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xffb265138),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 13,
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xffb265138),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    offset: Offset(4, 8),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "INSURANCE DETAILS",
                      style: contentStyle,
                    ),
                    InkWell(
                      onTap: viewInsurance,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: gradientStyle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 4,
                                offset: Offset(4, 8),
                              )
                            ]),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        child: Text(
                          "View Insurance",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffb265138),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "We are open from 7:00 AM to 8:00 PM",
                  style: TextStyle(
                    color: Color(0XFFf4f2dc),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xffb265138),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    offset: Offset(4, 8),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CHECK THE ESTIMATION",
                  style: contentStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You can check time estimation with price",
                  style: contentStyle,
                )
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffb265138),
        selectedItemColor: Color(0XFFf4f2dc),
        unselectedItemColor: Color(0XFFf4f2dc),
        iconSize: 30,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_paste_search_rounded), label: 'Browse'),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: 'MyInsurance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }

  void openGetInsured() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GetInsured()));
  }

  void viewInsurance() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ViewInsurance()));
  }
}
