import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(16.0),
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: "Username/Email",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
            },
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.green[500],
                  Colors.blue[300],
                  Colors.pink[100],

                ]),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(child: Text("Login",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,fontWeight: FontWeight.w500,
                    fontFamily: "Lobster"
                ),)),
            ),
          )
        ],
      ),
    );
  }
}
class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.green[500],
                  Colors.blue[300],
                  Colors.purple[100],

                ]),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(child: Text("Sign Up",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,fontWeight: FontWeight.w500,
                    fontFamily: "Lobster"
                ),)),
            ),
          )
        ],
      ),
    );
  }
}

