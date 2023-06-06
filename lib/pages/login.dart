import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            height: 844,
            decoration: BoxDecoration(
              color: HexColor("#7B61FF"),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 28,
                  child: Container(
                    width: 350,
                    height: 350,
                    child: Stack(
                      children: [
                        Positioned(
                          // saly13rFa (385:387)
                          top: -10,
                          child: Align(
                            child: SizedBox(
                              width: 350,
                              height: 350,
                              child: Image.asset(
                                'assets/images/saly-13.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse234MCL (385:388)
                          left: 27,
                          top: 317,
                          child: Align(
                            child: SizedBox(
                              width: 312,
                              height: 24,
                              child: Image.asset(
                                'assets/images/ellipse-234-aRN.png',
                                width: 312,
                                height: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // frame11120ret (313:386)
                  left: 0,
                  top: 379,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 24),
                    width: 412,
                    height: 465,
                    decoration: BoxDecoration(
                      color: HexColor("#FFFFFF"),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // signinLKA (313:387)
                            margin: EdgeInsets.fromLTRB(0, 0, 256, 23),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                height: 1.2575,
                                letterSpacing: -0.3000000119,
                                color: HexColor("#7B61FF"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // emailyd2 (313:397)
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 9),
                                  child: Text(
                                    'Email',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2575,
                                      letterSpacing: -0.3000000119,
                                      color: HexColor("#000000"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(10, 16.5, 25, 10.5),
                                  margin: EdgeInsets.fromLTRB(7, 0, 7, 9),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff1f1fd),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SizedBox(
                                    height: 20,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter Your Email Here",
                                      ),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        letterSpacing: -0.3000000119,
                                        color: HexColor("#000000"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  //widget Password
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 9),
                                  child: Text(
                                    'Password',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2575,
                                      letterSpacing: -0.3000000119,
                                      color: HexColor("#000000"),
                                    ),
                                  ),
                                ),
                                Container(
                                  //widget BoxPassword
                                  padding:
                                      EdgeInsets.fromLTRB(10, 16.5, 25, 10.5),
                                  margin: EdgeInsets.fromLTRB(7, 0, 7, 9),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff1f1fd),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SizedBox(
                                    height: 20,
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter Your Password Here",
                                      ),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        letterSpacing: -0.3000000119,
                                        color: HexColor("#000000"),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5, 25),
                                  width: double.infinity,
                                  height: 24,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Checkbox(
                                              value: isChecked,
                                              activeColor: HexColor("7b61ff"),
                                              onChanged: (value) {
                                                setState(() {
                                                  isChecked = value!;
                                                });
                                              },
                                            ),
                                            Text(
                                              'Remember Me',
                                              style: TextStyle(
                                                  color: HexColor("#727272")),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        //forgotpassword6f2 (313:430)
                                        margin:
                                            EdgeInsets.fromLTRB(80, 1, 0, 0),
                                        child: Text(
                                          'Forgot Password?',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2575,
                                            letterSpacing: -0.3000000119,
                                            color: HexColor("#B1B1B1"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // Widget Button Login (313:409)
                                  margin: EdgeInsets.fromLTRB(7, 0, 3, 25),
                                  width: double.infinity,
                                  height: 50,

                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: HexColor("#7B61FF"),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Text(
                                      'Login',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        letterSpacing: -0.3000000119,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // donthaveanaccountyetsignupnowT (313:433)
                                  margin: EdgeInsets.fromLTRB(50, 0, 9, 0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575,
                                        letterSpacing: -0.3000000119,
                                        color: Color(0xffa5a5a5),
                                      ),
                                      children: [
                                        TextSpan(
                                            text: 'Don’t have an account yet? ',
                                            style: TextStyle(
                                                color: HexColor("#A6A6A6"))),
                                        TextSpan(
                                          text: 'Sign up now',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2575,
                                            letterSpacing: -0.3000000119,
                                            color: HexColor("#7B61FF"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
