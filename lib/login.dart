import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
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
                Text(
                  "GOFINDAPRO",
                  style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.w600),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:190.0),
            child: Container(
             child:ListView(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left:42.0,top:20.0),
                   child: Text("Welcome back",style: TextStyle(fontSize:28.0,fontWeight: FontWeight.w600),),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:42.0),
                   child: Text("Sign in with your account",style: TextStyle(fontSize: 15.0,color: Colors.black87),),
                 ),
                 SizedBox(
                   height: 30.0,
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:42.0),
                   child: Text("Username/Email/Mobile Number",style: TextStyle(fontSize: 15.0,color: Colors.black87),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:40.0,right: 40.0),
                   child: TextFormField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                        ),
                    ),
                   ),
                 ),
                 SizedBox(
                   height: 25.0,
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:42.0),
                   child: Text("Password",style: TextStyle(fontSize: 15.0,color: Colors.black87),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left:40.0,right: 40.0),
                   child: TextFormField(
                     obscureText: _isObscure, // initital true
                     decoration: InputDecoration(
                       border: UnderlineInputBorder(
                       ),
                       suffix: InkWell(
                         child: _isObscure ? Text("Show") : Text("Hide"),
                         onTap: (){
                           setState(() {
                             _isObscure = !_isObscure;
                           });
                         },
                       ),
                         suffixStyle: const TextStyle(color:Colors.orangeAccent)),
                     ),
                   ),
                 Padding(
                   padding: const EdgeInsets.only(top:20.0,left:40.0,right:40.0),
                   child: Container(
                     height: 60.0,
                     width: 400.0,
                     decoration: BoxDecoration(
                       gradient: LinearGradient(
                         colors:[Color(0xff4ACAD7),Color(0xffE175F9)],
                       ),
                       borderRadius: BorderRadius.circular(35.0),
                     ),
                     child: Center(
                         child: Text(
                           "LOGIN",
                           style: (TextStyle(color: Colors.white, fontSize: 20.0)),
                         )),
                   ),
                 ),
                 SizedBox(
                   height:20.0,
                 ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left:90.0),
                       child: Text("Forgot your password?",style: TextStyle(fontSize: 15.0,color: Colors.black87),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right:90.0),
                       child: Text("Reset here",style: TextStyle(fontSize: 15.0,color: Colors.blue),),
                     ),
                   ],
                 ),
                 SizedBox(
                  height: 50.0,
                 ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left:90.0),
                       child: Text("New User?",style: TextStyle(fontSize: 15.0,color: Colors.black87),),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>new SignUp() ));

                       },
                       child: Padding(
                         padding: const EdgeInsets.only(right:90.0),
                         child: Text("Create your account",style: TextStyle(fontSize: 15.0,color: Colors.blue),),
                       ),
                     ),
                   ],
                 ),
               ],
             ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(30.0),topRight:Radius.circular(30.0))),
            ),
          ),
        ],
      ),
      );
  }
}

// List view - ek ke neeche ek
// stack - ek ke upar ek
// no list view to be used to wrap stack -  renderflex error and widget exception thrown

