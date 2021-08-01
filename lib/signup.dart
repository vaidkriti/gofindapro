import 'package:flutter/material.dart';
import 'package:flutter_project/Additional.dart';
import 'package:flutter_project/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff22A6B3).withOpacity(0.67),
                  Color(0xffBE2EDD).withOpacity(0.17)
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  "1.png",
                  height: 100.0,
                  width: 1500.0,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>new Additional() ));
                  },
                  child: Text(
                    "GOFINDAPRO",
                    style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190.0),
            child: Container(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 42.0, top: 20.0),
                    child: Text(
                      "Create New",
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42.0),
                    child: Text(
                      "Join Gofindapro Community",
                      style: TextStyle(fontSize: 15.0, color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 42.0),
                        child: Text(
                          "Already have an account?",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.black87),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new Login()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 90.0),
                          child: Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 42.0),
                              child: Text(
                                "First Name",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.black87),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 100.0),
                              child: Text(
                                "Last Name",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.black87),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Container(
                              width: 130.0,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Container(
                              width: 130.0,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 42.0),
                            child: Text(
                              "Username",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 40.0, right: 40.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 42.0),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 40.0, right: 40.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 42.0),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: TextFormField(
                          obscureText: _isObscure, // initital true
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              suffix: InkWell(
                                child: _isObscure ? Text("Show") : Text("Hide"),
                                onTap: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              suffixStyle:
                                  const TextStyle(color: Colors.orangeAccent)),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 42.0),
                            child: Text(
                              "Confirm password",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: TextFormField(
                          obscureText: _isObscure, // initital true
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              suffix: InkWell(
                                child: _isObscure ? Text("Show") : Text("Hide"),
                                onTap: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              suffixStyle:
                                  const TextStyle(color: Colors.orangeAccent)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:40.0),
                        child: Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              // fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Text(
                              "By clicking this,You will agree the ",
                              style: TextStyle(
                                  fontSize: 11.0, color: Colors.black87),
                            ),
                            Text(
                              "terms & ",
                              style: TextStyle(
                                  fontSize: 11.0, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:71.0),
                        child: Row(
                          children: [
                            Text(
                              "condition",
                              style: TextStyle(
                                  fontSize: 11.0, color: Colors.blue),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:5.0,right:5.0),
                              child: Text(
                                "and",
                                style: TextStyle(
                                    fontSize: 11.0, color: Colors.black87),
                              ),
                            ),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  fontSize: 11.0, color: Colors.blue),
                            ),
                            Text(
                              ".",
                              style: TextStyle(
                                  fontSize: 11.0, color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
            ),
          ),
          SizedBox(
            height:30.0
          ),
          Padding(
            padding: const EdgeInsets.only(left:40.0),
            child: Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  "Get notified with new Updates,Posts,Messages ",
                  style: TextStyle(
                      fontSize: 11.0, color: Colors.black87),
                ),
                Text(
                  "of Gofindapro.",
                  style: TextStyle(
                      fontSize: 11.0, color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
