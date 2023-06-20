import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tias/Components/BottomNavigator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#7B61FF"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset(
                  'assets/images/saly-13.png',
                  fit: BoxFit.cover,
                ),
              ),
              height: 370,
              width: double.infinity,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: HexColor("#FFFFFF"),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  height: 465,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // signinLKA (313:387)
                          margin: EdgeInsets.fromLTRB(0, 25, 256, 23),
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
                                margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
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
                                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
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
                                margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
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
                                margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
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
                                margin: EdgeInsets.fromLTRB(20, 0, 30, 25),
                                width: double.infinity,
                                height: 24,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                      margin: EdgeInsets.fromLTRB(90, 1, 0, 0),
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
                                margin: EdgeInsets.fromLTRB(30, 0, 30, 25),
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
                                                BottomNavigator()));
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
                                margin: EdgeInsets.fromLTRB(75, 0, 75, 0),
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
              ],
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
