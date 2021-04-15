import 'package:flutter/material.dart';

import 'login_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool formVisible;
  int _formIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    formVisible = false;
    _formIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/babybed2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: [
            Container(
              height: 700,
              width: 700,
              color: Colors.black54,
              child: Column(
                children: [
                  const SizedBox(height: kToolbarHeight + 40),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Toto's  Shop",
                          style: TextStyle(
                            fontFamily: "Monoton",
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.blue[500],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          " 'Only The Best For Your Kid' ",
                          style: TextStyle(
                            fontFamily: "Lobster",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.blue[400],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      formVisible=true;
                                      _formIndex=1;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.deepOrange[500],
                                            Colors.blue[300],
                                            Colors.blue[100],
                                          ]),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Lobster"),
                                        )),
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      formVisible=true;
                                      _formIndex=2;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.deepOrange[500],
                                        Colors.blue[300],
                                        Colors.blue[100],
                                      ]),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Center(
                                        child: Text(
                                          "Sign Up",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Lobster"),
                                        )),
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Positioned(
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.yellow[500],
                                  Colors.blue[300],
                                  Colors.orange[300],
                                ]),
                                borderRadius:
                                BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Image.asset("Images/google-logo.png"),
                                  Text(
                                    "Continue With Google",
                                    style: TextStyle(
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Lobster"),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: 10,),

                ],
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 200),
              child: (!formVisible)
                  ? null
                  :
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            _formIndex = 1;
                          });
                        },
                        textColor: _formIndex == 1
                            ? Colors.white
                            : Colors.black,
                        color: _formIndex == 1
                            ? Colors.red
                            : Colors.white,
//                          textColor: Colors.white,
//                          color: Colors.purple[500],
                        child: Text("Login"),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            _formIndex = 2;
                          });
                        },
                        textColor: _formIndex == 2
                            ? Colors.white
                            : Colors.black,
                        color: _formIndex == 2
                            ? Colors.red
                            : Colors.white,
//                        textColor: Colors.white,
//                          color: Colors.purple,
                        child: Text("Sign Up"),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        icon: Icon(Icons.close),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            formVisible = false;
                          });
                        },
                      )
                    ],
                  ),
                  Container(
                    height:400,
                    width: 400,
                    child: AnimatedSwitcher(duration: Duration(milliseconds: 200),
                      child: _formIndex==1?LoginForm():SignupForm(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
