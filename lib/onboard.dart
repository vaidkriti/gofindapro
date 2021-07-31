import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/login.dart';
import 'package:flutter_project/signup.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  _OnboardState createState() => _OnboardState();
}
class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff22A6B3).withOpacity(0.67), Color(0xffBE2EDD).withOpacity(0.17)],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Image.asset(
              "1.png",
              height: 100.0,
              width: 1500.0,
            ),
            Text(
              "GOFINDAPRO",
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30.0,
            ),
            Image.asset("2.png"),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>new Login()));
              },
              child: Container(
                height: 60.0,
                width: 300.0,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(35.0)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new SignUp()));
              },
              child: Container(
                height: 60.0,
                width: 300.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xff4ACAD7),Color(0xffE175F9)]),
                    borderRadius: BorderRadius.circular(35.0)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
