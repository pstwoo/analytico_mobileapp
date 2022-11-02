import 'package:flutter/material.dart';
import 'package:restaurantflutter/LoginPage.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding(),
    );
  }
}

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  PageController _pageController = new PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf4f2dc),
      body: Stack(
        children: [
          Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    onBoardPage("onBoard1", "Car Insurance"),
                    onBoardPage("onBoard2", "Invest"),
                    onBoardPage("onBoard3", "Family"),
                    onBoardPage("onBoard2", "Life"),
                    onBoardPage("onBoard4", "Invest Now"),
                  ],
                  onPageChanged: (value) => {setCurrentPage(value)},
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) => getIndicator(index)))
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: changePage,
              child: Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xffb265138), Color(0xffb265138)],
                        stops: [0, 1],
                        begin: Alignment.topCenter)),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void changePage() {
    // 4 means the last page kasi nung onboard pics//
    if (currentPage == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      _pageController.animateToPage(currentPage + 1,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      height: 10,
      width: (currentPage == pageNo) ? 20 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: (currentPage == pageNo) ? Color(0xffb265138) : Colors.grey),
    );
  }

  /// Picture ng page ///
  Column onBoardPage(String img, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/$img.png'))),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'times new roman',
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
