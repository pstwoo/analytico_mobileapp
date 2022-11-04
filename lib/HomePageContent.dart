import 'package:flutter/material.dart';
import 'package:restaurantflutter/GetInsured.dart';
import 'package:restaurantflutter/StyleScheme.dart';
import 'package:restaurantflutter/ViewInsurance.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  State<HomePageContent> createState() => HomePageContentState();
}

class HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFf4f2dc),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 160,
              margin: const EdgeInsets.all(10.0),
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
                              image:
                                  AssetImage('assets/images/bannerImg.png'))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              "Services",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xffb265138),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10.0),
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
                      margin: const EdgeInsets.all(30.0),
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
                                margin: const EdgeInsets.all(10.0),
                                alignment: Alignment.center,
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
              height: 0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
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
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Color(0XFFf4f2dc)),
                      ),
                      InkWell(
                        onTap: openViewInsurance,
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
                    "View Your Active Insurance policy",
                    style: TextStyle(
                      color: Color(0XFFf4f2dc),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
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
                    "PARTNERED COMPANY",
                    style: contentStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "",
                    style: contentStyle,
                  )
                ],
              ),
            ),
          ]),
        ));
  }

  void openGetInsured() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GetInsured()));
  }

  void openViewInsurance() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ViewInsurance()));
  }
}
