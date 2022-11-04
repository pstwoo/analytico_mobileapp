import 'package:flutter/material.dart';
import 'LoginPage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signUpPage(),
    );
  }
}

class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
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
              height: 50,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/logo1.png',
                ),
              )),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0xffb265138),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'sfpro'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Mail ID",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        gradient: LinearGradient(
                            colors: [Color(0xffb265138), Color(0xffb265138)],
                            stops: [0, 1],
                            begin: Alignment.topCenter)),
                    child: Center(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'sfpro'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "By pressing signup you agree to our terms and conditions",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16, fontFamily: 'sfpro'),
                ),
                InkWell(
                  onTap: openLoginPage,
                  child: Text(
                    " LOGIN",
                    style: TextStyle(
                        color: Color(0xffb265138),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void openLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
